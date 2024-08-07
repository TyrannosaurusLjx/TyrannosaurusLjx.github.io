# mlcourse

---
## Chapter 1

一个 $\text{dataframe}$ 可以看成一个 $m\times n$ 的矩阵, 包含 $m$ 个元素, 每个元素有 $n$ 个特征


`pandas,numpy` : 库

- `df = pd.read_csv()` 读数据

- `df.head()` 查看数据前几行

- `df.shape` 返回数据行列(`df.shap[0]` 可获得数据长度)

- `df.columns` 返回列名称

- `df["column-name"]` 可以访问列名为 `column-name` 的 $m\times 1$ 列向量

- `df["column-name].value_counts()` 返回列 `column-name` 的各个值的出现次数

    - `df["column-name].value_counts(normalsize=True)` 则对统计量做单位化(百分比)
    - `df.sort_values(by="column-name",ascending=False)` 以列 'column-name' 为依据做降序排列
    - `df["column-name].mean()` 列平均值 
    - `df["column-name].median()` 列中位数
    - `df["column-name].std()` 列标准差
    - `df["column-name].min()` 列最小值
    - `df["column-name].max()` 列最大值

- `df[df["column-name_1"] == value_1 & df["column-name_2"] == value_2]` 筛选满足 `column-name_1` 为 `value_1` 且 `column-name_2` 为 `value_2` 的行 (还有 `|` 运算符)

- `df.loc[i:j, k:l]` 可以访问数据的子矩阵 

    - `df.loc[0:5, "State":"Area code"]`, 这里列会包含 Area code 列
    - `df.iloc[0:5, 0:3]`, 这里列不会包含第 4 列

- `df.apply(function)` 把 function 应用到每一列

- `df["column-name"].map({old_value_1: new_value_1, old_value_2: new_value_2})` 可以把列中的 `old_value_1` 替换为 `new_value_1`, `old_value_2` 替换为 `new_value_2` 

    - 例如要实现 $0\to False,1\to True$

- `df.groupby(by=["cloumn-name_1", "column-name_2"])` 返回一个按 $column-name_1,column-name_2$ 的值的笛卡尔积坐标和对应的数据集做成的元组

```python
for (sex, race), group in data.groupby(by=["sex", "race"]):
    print("sex:{}, race:{}".format(sex,race))
    plt.hist(group["age"], bins=20)
    plt.show()
```

- `df.insert(index, column_name, value)` 在 `index` 位置插入一列 `column_name` 值为 `value`

    - 类似 python 字典,可以直接使用 `df["column_name"] = value` 添加列

- `df.drop(["column_name"], axis=1)` 删除列

- `df.drop([i,j,k], axis=0)` 删除行 `i,j,k`

---

## Chapter 2

- `df[features].hist(figsize=(10, 4))` 画出 `features` 列的直方<D-R>图

- `df[features].plot(kind="density", figsize=(10, 4))` 画出 `features` 列的密度图

- `plt.scatter(df["column_1"], df["column_2"])` 画出散点图

---

## Chapter 3

- 熵
    - $$S = -\sum\limits_{i\in\mathcal{E}}p_i\log_2 p_i$$

- 信息增益
    - $$\text{IG} = S_O - \sum\limits_{i=1}^{n}\frac{N_i}{N}S_i$$

    - 其中，$q$ 是分割的组数，$N_i$ 是第 $i$ 项时的样本数目。



















