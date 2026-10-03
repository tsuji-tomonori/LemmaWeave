# 共通部分の確率の上界

0≤P(A∩B)≤P(A)。

条件：各部分の重みが非負。

使う場面：二つの属性の相関が不明なとき、何が必ず言えるかを調べる。

## 根拠と分解

- A∩BはAの一部分。
- P(A)=P(A∩B)+P(A∩¬B)、後者が非負なので上界を得る。

## Lean宣言

- `LemmaWeave.Lemmas.FiniteProbability.intersection_bounds`

## 前提と未展開箇所

- 有理数の四則演算・一次式の変形はユーザー指定の中学既習として扱う。

## 使用例

- [独立性がない問題には反例と可能範囲で答える](probability_candidates.md)
