# USTBThesis
------
## 北京科技大学硕士（博士）毕业设计论文Tex模板（v0.1）
## 项目简要
北京科技大学官方只提供word版本模板，但是也已陈旧不堪。希望此项目能填补北科在Tex方面的空白，造福科大学子。也希望更多的贝壳可以加入进来，一起Coding，欢迎提供bug、issue和code.
## 项目详情
### 使用方法
请使用CTEX宏包进行编译，可以使用PdfLaTeX和XeLaTeX进行编译，各文件需保存为UTF-8格式。具体使用方法（LaTeX新手指南）详见本项目Wiki。
### 项目补充说明
>* 论文封面信息指导教师只有两个。
>* ref.bib文件中中文请添加语言项，如：

```TeX
	@article{ref2017,
		title={参考文件的语言选择标注},
		author={Xiao Ming},
		journal={GitHub},
		volume={1},
		number={1},
		pages={1-2},
		language={zh},
		year={2017}
	}
```
>* 模板文件有两个可选择项：master（硕士）和doctor（博士）

```TeX
	\documentclass[doctor]{USTBThesis}
	% 或者
	\documentclass[master]{USTBThesis}
```

### 文件简要说明
|功能|文件|
|:----|:----|
|主文件|main.tex|
|各章节文件|chapter.tex|
|论文相关信息（作者，指导教师，论文题目等）|ThesisInfo.tex|
|摘要|MyAbstract.tex|
|致谢|MyThanks.tex|
|论文前序|MyPreface.tex|
|个人简历|biogrephy.tex|
|独创性声明（此部分不必修改）|statement.tex|
|论文数据集|dataset.tex|
|引用文献信息|ref.bib|
|模板文件|USTBThesis.cls|

各文件保存后对主文件编译即可（注意：各文件需存储为UTF-8编码格式）。
模板中有些地方格式不能自动变换为最优，需手动调整参数。
