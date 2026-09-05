# 平方の非負性による下界

k ≤ a*(x−h)²+k。

条件：a,h,k,xは実数、0≤a。

使う場面：上に開く二次関数の下界を示す。

## 根拠と分解

- 平方は0以上。
- 非負係数を掛けても0以上。
- kを加えて下界を得る。

## Lean宣言

- `LemmaWeave.Lemmas.QuadraticMethods.vertex_lower_bound`

## 前提と未展開箇所

- 平方の非負性、非負数の積、順序と加法の両立。

## 使用例

- [平方完成と端点・頂点から二次関数の極値を示す](quadratic_extrema.md)
