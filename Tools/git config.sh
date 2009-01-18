#!/usr/bin/env bash
# 禁止大于1MB的文件上传
git config http.postBuffer 1024000
git config https.postBuffer 1024000