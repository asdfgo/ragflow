#!/usr/bin/env bash

set -e

# -----------------------------------------------------------------------------
# 在启动ragflow容器时执行的命令
# -----------------------------------------------------------------------------

# 安装本地保存的 PyMuPDF 库
echo "Installing PyMuPDF from local files..."
pip install --no-index --find-links=/ragflow/libs PyMuPDF

# 执行容器的原始启动命令（例如启动您的应用）
exec "$@"
