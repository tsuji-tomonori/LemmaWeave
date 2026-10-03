# 5年後の比から叔母の現在年齢を逆算

現在3歳のCoriが5年後に叔母の3分の1の年齢になる条件から、叔母の現在年齢を求める。

**取得済み固定GSM8Kの1問。**

- 年齢比は現在でなく5年後の同じ時点について述べている。

## age_cori_future：Coriの5年後

条件：Coriは現在3歳で5年後を考える。

根拠：

得られること：Coriは5年後に3+5=8歳。

既習の根拠：経過年数を現在年齢に足す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.age_cori_future`。

## age_aunt_future：叔母の5年後

条件：5年後のCori8歳が叔母の3分の1の年齢。

根拠：

得られること：叔母は5年後に8×3=24歳。

既習の根拠：3分の1に当たる量から全体を3倍して戻す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.age_aunt_future`。

## age_aunt_today：叔母の現在年齢

条件：叔母は5年後に24歳。

根拠：

得られること：現在は24−5=19歳。

既習の根拠：将来年齢から経過年数を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.age_aunt_today`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.age_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
