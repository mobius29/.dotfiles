-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.mouse = "a" -- 마우스 허용

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.shiftwidth = 2 -- >>, << 시 이동하는 폭

vim.opt.tabstop = 2
vim.opt.expandtab = true -- tab을 space로 대체
vim.opt.smarttab = true

vim.opt.title = true
vim.opt.laststatus = 2 -- 항상 상태바 표시
vim.opt.wrap = false
vim.opt.ruler = true -- 화면 우측 하단에 커서 위치 표시

vim.opt.showmatch = true -- 매칭되는 괄호 하이라이팅

vim.opt.syntax = "on" -- 문법 하이라이팅
vim.opt.hlsearch = true -- 검색어 하이라이팅
vim.opt.smartcase = true -- 검색 시 대소문자 구별

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.bs = "eol,start,indent" -- 줄의 끝, 시작, 들여쓰기에서 백스페이스 시 이전 줄

vim.opt.number = true
vim.wo.relativenumber = true
