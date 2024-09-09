package com.example.sftp.controller;


import com.example.sftp.entity.FileInfo;
import com.example.sftp.service.SftpService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class FileUploadController {

    private final SftpService sftpService;

    @GetMapping("/upload")
    public String showUploadForm() {
        return "uploadForm";
    }


    @PostMapping("/uploadFolder")
    public String handleFolderUpload(@RequestParam("files") MultipartFile[] files, Model model, RedirectAttributes redirectAttributes) {

        // Kiểm tra xem có file nào được chọn không
        if (files.length == 0 || files[0].isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select at least one file or folder.");
            redirectAttributes.addFlashAttribute("messageType", "error");
            return "redirect:/upload";
        }

        List<FileInfo> filesInfo = new ArrayList<>();

        // Duyệt qua từng file được tải lên
        for (MultipartFile file : files) {
            String filePath = sftpService.uploadFile(file);
            filesInfo.add(new FileInfo(file.getOriginalFilename(), filePath));
        }

        model.addAttribute("filesInfo", filesInfo);
        model.addAttribute("totalFiles", files.length);
        redirectAttributes.addFlashAttribute("message", "Upload " + files.length + " file successful. " );
        redirectAttributes.addFlashAttribute("messageType", "success");  // Đánh dấu là thông báo thành công

        // Chuyển hướng lại trang tải lên sau khi hoàn tất quá trình upload
        return "redirect:/upload";
    }
}