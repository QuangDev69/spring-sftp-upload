package com.example.sftp.service;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.Properties;
@Service
public class SftpService {

    @Value("${sftp.server}")
    private String sftpServer;

    @Value("${sftp.port}")
    private int sftpPort;

    @Value("${sftp.user}")
    private String sftpUser;

    @Value("${sftp.password}")
    private String sftpPassword;

    @Value("${sftp.remote-dir}")
    private String sftpRemoteDir;

    public String uploadFile(MultipartFile file) {

        Session session = null;
        ChannelSftp channelSftp = null;


        try {
            JSch jsch = new JSch();
            session = jsch.getSession(sftpUser, sftpServer, sftpPort);
            session.setPassword(sftpPassword);

            Properties config = new Properties();
            config.put("StrictHostKeyChecking", "no");
            session.setConfig(config);
            session.connect();

            channelSftp = (ChannelSftp) session.openChannel("sftp");
            channelSftp.connect();

            try {
                channelSftp.cd(sftpRemoteDir);
            } catch (Exception e) {
                channelSftp.mkdir(sftpRemoteDir);
                channelSftp.cd(sftpRemoteDir);
            }

            try (InputStream inputStream = file.getInputStream()) {
                String fileName = file.getOriginalFilename();
                if (fileName != null && fileName.contains("/")) {
                    fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
                }
                String remoteFilePath = sftpRemoteDir + "/" + fileName;
                channelSftp.put(inputStream, remoteFilePath);
                return "File uploaded successfully to " + remoteFilePath;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return "Error: " + ex.getMessage();
        } finally {
            if (channelSftp != null) {
                channelSftp.disconnect();
            }
            if (session != null) {
                session.disconnect();
            }
        }
    }
}

