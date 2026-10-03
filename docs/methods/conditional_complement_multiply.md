# 補集合側にも乗法公式を適用する

P(¬A∩B)=P(¬A)P(B|¬A)。

条件：P(¬A)>0。独立性は不要。

使う場面：A以外の集団の中での割合がわかるとき。

## 根拠と分解

- ¬Aの集団だけを取り出し、Bの割合を条件付き確率と定義する。
- 分母P(¬A)が正であることを確かめて掛け戻す。

## Lean宣言

- `LemmaWeave.Lemmas.FiniteProbability.givenNotA`
- `LemmaWeave.Lemmas.FiniteProbability.multiply_given_complement`

## 前提と未展開箇所

- 有理数の四則演算・一次式の変形はユーザー指定の中学既習として扱う。

## 使用例

- [卵の色で場合を分け、条件付き確率を使う](probability_eggs.md)
