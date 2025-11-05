" Vim syntax file
" Language: uxntal
" Maintainer: yorshex
" Latest Revision: 02 October 2025

syn match uxnPadding "\(^\|\s\)\zs[$|]\S*\ze\($\|\s\)"
syn match uxnJump "\(^\|\s\)\zs[?!]\S*\ze\($\|\s\)"
syn match uxnRawAddress "\(^\|\s\)\zs[-_=]\S*\ze\($\|\s\)"
syn match uxnLiteralAddress "\(^\|\s\)\zs[.,;]\S*\ze\($\|\s\)"
syn match uxnNumber "\(^\|\s\)\zs\([0-9a-f]\{1,4\}\|#[0-9a-f]\{2\}\|#[0-9a-f]\{4\}\)\ze\($\|\s\)"
syn match uxnLabel "\(^\|\s\)\zs[@&]\S*\ze\($\|\s\)"
syn region uxnOutermostComment start="\(^\|\s\)\zs(\S*\ze\($\|\s\)" end="\(^\|\s\)\zs)\ze\($\|\s\)" contains=uxnComment
syn region uxnComment start="\(^\|\s\)\zs(\ze\($\|\s\)" end="\(^\|\s\)\zs)\ze\($\|\s\)" contains=uxnComment
