# 独立性を仮定した場合の積の公式

独立ならP(A∩B)=P(A)P(B)。

条件：独立性が明示されるか、別途証明されている必要がある。無作為な1人の選出だけでは属性の独立性は従わない。

使う場面：二つの属性が独立と保証される場合に限る。

## 根拠と分解

- 独立性とは共通部分の確率が周辺確率の積に等しいという条件。
- 条件を追加した結果と、元の問題だけから得られる結果を分ける。

## Lean宣言

- `LemmaWeave.Lemmas.FiniteProbability.Independent`
- `LemmaWeave.Lemmas.FiniteProbability.independent_product`

## 前提と未展開箇所

- 有理数の四則演算・一次式の変形はユーザー指定の中学既習として扱う。

## 使用例

- [独立性がない問題には反例と可能範囲で答える](probability_candidates.md)
