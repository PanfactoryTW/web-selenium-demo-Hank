# 確保 reports 資料夾存在
if (-not (Test-Path -Path "reports")) {
    New-Item -ItemType Directory -Path "reports"
}

# 建立時間戳字串（格式：20250717_1549）
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

# 建立報告路徑
$reportPath = "reports/test_report_$timestamp.html"

# 執行 pytest 並產出 HTML 報告
pytest --html=$reportPath --self-contained-html

# 顯示報告檔案位置
Write-Host "📄 報告已儲存：" $reportPath

Start-Process $reportPath
