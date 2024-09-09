<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/5/2024
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body><h2>Select a folder to upload</h2>--%>
<%--<form id="uploadForm" method="post" action="uploadFolder" enctype="multipart/form-data">--%>
<%--    <input type="file" id="fileInput" name="files" webkitdirectory multiple />--%>
<%--    <input type="submit" value="Upload Folder" />--%>
<%--</form>--%>

<%--<h3>Files in the selected folder:</h3>--%>
<%--<ul id="fileList"></ul>--%>

<%--<h4>Total files: <span id="totalFiles">0</span></h4>--%>

<%--<!-- Hiển thị thông báo thành công -->--%>
<%--<c:if test="${not empty message}">--%>
<%--    <p style="color:green;">${message}</p>--%>
<%--</c:if>--%>

<%--<script>--%>
<%--    document.getElementById('fileInput').addEventListener('change', function(event) {--%>
<%--        var fileList = event.target.files;--%>
<%--        var output = document.getElementById('fileList');--%>
<%--        var totalFiles = document.getElementById('totalFiles');--%>
<%--        output.innerHTML = '';  // Clear previous list--%>

<%--        if (fileList.length > 0) {--%>
<%--            for (var i = 0; i < fileList.length; i++) {--%>
<%--                var li = document.createElement('li');--%>
<%--                li.textContent = 'File name: ' + fileList[i].name +--%>
<%--                    ' | File path: ' + fileList[i].webkitRelativePath--%>
<%--                output.appendChild(li);--%>
<%--            }--%>
<%--            totalFiles.textContent = fileList.length;  // Update total file count--%>
<%--        } else {--%>
<%--            output.textContent = 'No files selected.';--%>
<%--            totalFiles.textContent = '0';  // Reset total file count--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>


<%--</body>--%>
<%--</html>--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Upload Folder</title>--%>
<%--    <!-- Bootstrap 5 CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />--%>
<%--</head>--%>
<%--<body class="bg-light">--%>

<%--<div class="container mt-5">--%>
<%--    <h2 class="mb-4 text-center">Select a Folder to Upload</h2>--%>

<%--    <!-- Form Upload -->--%>
<%--    <form id="uploadForm" method="post" action="uploadFolder" enctype="multipart/form-data" class="mb-4">--%>
<%--        <div class="mb-3">--%>
<%--            <input type="file" id="fileInput" name="files" webkitdirectory multiple class="form-control"/>--%>
<%--        </div>--%>
<%--        <div class="d-flex ">--%>
<%--            <button type="submit" class="btn btn-primary w-10 me-2">Start Transfer</button>--%>
<%--            <button type="button" id="cancelButton" class="btn btn-secondary w-10">Cancel</button>--%>
<%--        </div>--%>
<%--    </form>--%>


<%--    <c:if test="${not empty message}">--%>
<%--        <c:choose>--%>
<%--            <c:when test="${messageType == 'success'}">--%>
<%--                <div class="alert alert-success" role="alert">--%>
<%--                        ${message}--%>
<%--                </div>--%>
<%--            </c:when>--%>
<%--            <c:when test="${messageType == 'error'}">--%>
<%--                <div class="alert alert-danger" role="alert">--%>
<%--                        ${message}--%>
<%--                </div>--%>
<%--            </c:when>--%>
<%--        </c:choose>--%>
<%--    </c:if>--%>



<%--    <!-- Danh sách file -->--%>
<%--    <div class="card">--%>
<%--        <div class="card-header">--%>
<%--            Files in the Selected Folder--%>
<%--        </div>--%>
<%--        <div class="card-body p-0">--%>
<%--            <div class="list-group px-3" style="min-height: 100px;" id="fileList"></div>--%>
<%--        </div>--%>
<%--        <div class="card-footer">--%>
<%--            <h6>Total files: <span id="totalFiles">0</span></h6>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- Bootstrap 5 JS -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>--%>

<%--<script>--%>
<%--    document.getElementById('fileInput').addEventListener('change', function(event) {--%>
<%--        var fileList = event.target.files;--%>
<%--        var output = document.getElementById('fileList');--%>
<%--        var totalFiles = document.getElementById('totalFiles');--%>
<%--        output.innerHTML = '';  // Clear previous list--%>

<%--        if (fileList.length > 0) {--%>
<%--            // Tạo tiêu đề cho 2 cột File Name và File Path--%>
<%--            var headerRow = document.createElement('div');--%>
<%--            headerRow.className = 'row font-weight-bold border-bottom py-2'; // Thêm định dạng hàng tiêu đề--%>

<%--            var colHeaderName = document.createElement('div');--%>
<%--            colHeaderName.className = 'col-6'; // Cột cho File Name--%>
<%--            colHeaderName.innerHTML = '<strong>File Name</strong>';--%>

<%--            var colHeaderPath = document.createElement('div');--%>
<%--            colHeaderPath.className = 'col-6'; // Cột cho File Path--%>
<%--            colHeaderPath.innerHTML = '<strong>File Path</strong>';--%>

<%--            headerRow.appendChild(colHeaderName);--%>
<%--            headerRow.appendChild(colHeaderPath);--%>
<%--            output.appendChild(headerRow);  // Thêm hàng tiêu đề vào danh sách--%>

<%--            // Thêm danh sách file--%>
<%--            for (var i = 0; i < fileList.length; i++) {--%>
<%--                var row = document.createElement('div');--%>
<%--                row.className = 'row border-bottom py-2'; // Tạo dòng cho mỗi file--%>

<%--                // Tạo cột cho tên file--%>
<%--                var colName = document.createElement('div');--%>
<%--                colName.className = 'col-6'; // 50% chiều rộng--%>
<%--                colName.innerHTML = fileList[i].name;--%>

<%--                // Tạo cột cho đường dẫn file--%>
<%--                var colPath = document.createElement('div');--%>
<%--                colPath.className = 'col-6'; // 50% chiều rộng--%>
<%--                colPath.innerHTML = fileList[i].webkitRelativePath;--%>

<%--                // Gắn các cột vào dòng--%>
<%--                row.appendChild(colName);--%>
<%--                row.appendChild(colPath);--%>

<%--                // Thêm dòng vào danh sách--%>
<%--                output.appendChild(row);--%>
<%--            }--%>
<%--            totalFiles.textContent = fileList.length;  // Cập nhật tổng số file--%>
<%--        } else {--%>
<%--            output.innerHTML = '<div class="text-danger p-2">No files selected.</div>';--%>
<%--            totalFiles.textContent = '0';  // Reset tổng số file--%>
<%--        }--%>
<%--    });--%>

<%--    // Sự kiện cho nút "Cancel" để xoá các file đã chọn--%>
<%--    document.getElementById('cancelButton').addEventListener('click', function() {--%>
<%--        // Xóa danh sách file--%>
<%--        document.getElementById('fileList').innerHTML = '';--%>
<%--        document.getElementById('totalFiles').textContent = '0';--%>

<%--        // Xóa giá trị trong input file--%>
<%--        document.getElementById('fileInput').value = '';--%>

<%--        // Hiển thị thông báo hủy bỏ--%>
<%--        alert('Đã hủy lựa chọn các file.');--%>
<%--    });--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Folder</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="mb-4 text-center">Select a Folder to Upload</h2>

    <!-- Form Upload -->
    <form id="uploadForm" method="post" action="uploadFolder" enctype="multipart/form-data" class="mb-4">
        <div class="mb-3">
            <input type="file" id="fileInput" name="files" webkitdirectory multiple class="form-control"/>
        </div>
        <div id="folderPath" class="text-muted mb-3"></div>

        <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-primary w-10 me-2">Start Transfer</button>
            <button type="button" id="cancelButton" class="btn btn-secondary w-10">Cancel</button>
        </div>
    </form>

    <!-- Thông báo, ẩn mặc định, có nút X để tắt -->
    <div id="alertMessage" class="alert alert-dismissible fade show p-2" role="alert" style="display: none;">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

    <!-- Danh sách file -->
    <div class="card mt-4">
        <div class="card-header">
            Files in the Selected Folder
        </div>
        <div class="card-body p-0">
            <div class="list-group px-3" style="min-height: 100px" id="fileList"></div>
            <div id="noDataMessage" class="text-center text-muted">No data to display</div>
        </div>
        <div class="card-footer">
            <h6>Total files: <span id="totalFiles">0</span></h6>
        </div>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script>
    document.getElementById('fileInput').addEventListener('change', function(event) {
        var fileList = event.target.files;
        var folderPathDiv = document.getElementById('folderPath');

        // Lấy đường dẫn của file đầu tiên
        if (fileList.length > 0) {
            var firstFilePath = fileList[0].webkitRelativePath;
            // var folderName = firstFilePath.split('/')[0];  // Lấy tên thư mục đầu tiên

            // Hiển thị tên thư mục
            folderPathDiv.innerHTML = 'Selected folder: ' + firstFilePath;
        } else {
            folderPathDiv.innerHTML = 'No folder selected.';
        }
    });
    // Hiển thị thông báo nếu có message từ server
    function showMessage(message, type) {
        var alertBox = document.getElementById('alertMessage');

        // Kiểm tra nếu có message, hiển thị và thêm class phù hợp
        if (message && message.length > 0) {
            alertBox.innerHTML = message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
            alertBox.classList.remove('alert-success', 'alert-danger');  // Xóa class cũ

            // Thêm class tương ứng dựa trên loại thông báo
            if (type === 'success') {
                alertBox.classList.add('alert-success');
            } else if (type === 'error') {
                alertBox.classList.add('alert-danger');
            }

            // Hiển thị thông báo
            alertBox.style.display = 'block';
        } else {
            // Ẩn thông báo nếu không có message
            alertBox.style.display = 'none';
        }
    }

    // Lấy message từ server và hiển thị nó
    var messageFromServer = "${message}";
    var messageTypeFromServer = "${messageType}";  // 'success' hoặc 'error'
    showMessage(messageFromServer, messageTypeFromServer);

    // Hiển thị danh sách file được chọn
    document.getElementById('fileInput').addEventListener('change', function(event) {
        var fileList = event.target.files;
        var output = document.getElementById('fileList');
        var totalFiles = document.getElementById('totalFiles');
        var noDataMessage = document.getElementById('noDataMessage');

        output.innerHTML = '';  // Clear previous list

        if (fileList.length > 0) {
            noDataMessage.style.display = 'none';

            // Tạo tiêu đề cho 2 cột File Name và File Path
            var headerRow = document.createElement('div');
            headerRow.className = 'row font-weight-bold border-bottom py-2';

            var colHeaderName = document.createElement('div');
            colHeaderName.className = 'col-6';
            colHeaderName.innerHTML = '<strong>File Name</strong>';

            var colHeaderPath = document.createElement('div');
            colHeaderPath.className = 'col-6';
            colHeaderPath.innerHTML = '<strong>File Path</strong>';

            headerRow.appendChild(colHeaderName);
            headerRow.appendChild(colHeaderPath);
            output.appendChild(headerRow);

            // Thêm danh sách file
            for (var i = 0; i < fileList.length; i++) {
                var row = document.createElement('div');
                row.className = 'row border-bottom py-2';

                var colName = document.createElement('div');
                colName.className = 'col-6';
                colName.innerHTML = fileList[i].name;

                var colPath = document.createElement('div');
                colPath.className = 'col-6';
                colPath.innerHTML = fileList[i].webkitRelativePath;

                row.appendChild(colName);
                row.appendChild(colPath);
                output.appendChild(row);
            }
            totalFiles.textContent = fileList.length;
        } else {
            output.innerHTML = '<div class="text-danger p-2">No files selected.</div>';
            totalFiles.textContent = '0';
        }
    });

    // Sự kiện cho nút "Cancel" để xóa các file đã chọn
    document.getElementById('cancelButton').addEventListener('click', function() {
        document.getElementById('fileList').innerHTML = '';
        document.getElementById('totalFiles').textContent = '0';
        document.getElementById('fileInput').value = '';
        document.getElementById('folderPath').innerHTML= '';
        var noDataMessage = document.getElementById('noDataMessage');
        noDataMessage.style.display = 'block';

        alert('Đã hủy lựa chọn các file.');
    });
</script>

</body>
</html>
