## 天池&Datawhale 新闻文本分类比赛 第2名参赛方案源码

比赛地址:
https://tianchi.aliyun.com/competition/entrance/531810/introduction

项目主要文件目录

├── bert_lstm.ipynb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10个模型概率加权及生成伪标签  
├── bert_model      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5个bert模型  
│   ├── BERT_fold_5.py &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    seed=555，130w步bert_base模型，使用test_a伪标签  
│   ├── BERT_fold_6.py  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  seed=666，130w步bert_base模型，使用test_a伪标签  
│   ├── BERT_fold_7.py &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;seed=777，130w步bert_base模型，使用test_a伪标签  
│   ├── BERT_fold_8.py  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; seed=888，130w步bert_base模型，使用test_a伪标签  
│   ├── BERT_fold_9.py                         seed=999，130w步bert_base模型，使用test_a伪标签  
│   └── pretrain_bert                          bert_base预训练代码，语料为train_set + test_a  
│       └── pretrain_bert.ipynb                bert_base预训练步骤  
│         
└── lstm_model                                5折交叉验证lstm模型  
    ├── lstm.py                               使用word2vec词向量，test_a伪标签  
    ├── word2vec.ipynb                        用天池官方的gensim训练word2vec代码，训练200维词向量，语料为train_set + test_a  
    └── word2vec.txt                          使用的word2vec词向量，200dim，10window，10iter  

如果你不能看懂这里的源码，推荐你看下我的比赛经验分享

无论是bert预训练模型、bert分类模型，还是LSTM 5折交叉验证模型训练都非常耗时，如果你用单卡P100，训练时间将是以天为单位的。。。

不过我在代码里提供了全部已经训练好的模型文件，你可以直接进行预测

我最终提交的成绩线上F1值 97.35，其中5折LSTM是96.74，5个bert模型没有机会做测试，根据之前的成绩推测应该在97.25左右。
我这里提供的模型文件与我在比赛时提交的并不完全相同，所以你的预测结果会跟我有微小的误差。
还有一个导致预测结果存在误差的原因，就是5折LSTM原作者的模型并没有固定全部seed，而我出于某种玄学原因，决定维持原状。

项目文件重新整理后并没有进行测试，如果存在BUG请反馈
