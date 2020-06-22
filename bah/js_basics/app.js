document.getElementById("openFile").addEventListener('change', function() {
    var fr = new FileReader();
    fr.onload = function() {
        document.getElementById("fileContents")
    }
})