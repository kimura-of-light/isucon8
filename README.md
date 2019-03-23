# iscon8
ISUCON8の予選

# このリポジトリの運用
- ブランチ運用はrelease と masterで行う
  - master  : 開発ブランチ
  - release : リリース用ブランチ
  
- releaseブランチでScoreが安定した時はタグを打つ
  - rollbackできない時はメジャーレベルを更新、rollbackできる場合はマイナーレベルを更新
