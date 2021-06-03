# Rime 词库 for 朙月拼音

整合 BetterRime 与 SuperRime 词库，词条数约 700 万条，词条主要包括：
- 各种 NLP 语料库，来源于巨量的网页、新闻、小说、维基/百度百科等
- 细胞词库、词典、专业词、成语、诗词、俗语
- Emoji 表情
- 输入 `/date` `/time` `/数字` 快速指令

## 使用方法

输入法必须指定[朙月拼音]，在用户设定文件夹确保 `default.custom.yaml` 参数如下：

```yaml
patch:
  schema_list:
    - schema: luna_pinyin_simp  # 朙月拼音 简化字
    #- schema: luna_pinyin       # 朙月拼音
```

然后解压本库的所有文件到用户设定文件夹，重新部署即可。

测试词：红叶贺、风待月、慕景镜、一颗赛艇、城会玩、鬼灭之刃、十动然拒、怀中抱妹杀、同济六版...

使用哪些词库可以在 `luna_pinyin.extended.dict.yaml` 在 `import_tables` 配置，颜表情和英文单词默认不开启，如想开启只需将注释去掉即可。SuperRime 词库中存在小部分错词、重复词，如果不想使用可以将 `super_rime` 开头的项注释掉。

更多配置技巧可以参考[「鼠须管」的调教笔记](https://scomper.me/gtd/-shu-xu-guan-de-diao-jiao-bi-ji)。
