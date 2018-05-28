
# May 3, 2017, R languague workshop
# https://ling32342.github.io/2017_NCCU_R/RBasic.html#1

?sum #

# help(sum) # ctrl + shift + c ��q����
# ??su

dat1 <- data.frame(date = c("11/29", "11/30", "12/01", "12/02", "12/03", "12/04", "12/05"),
                   weekday = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"))
dat1 # print R object

dat1[1, 1] # ����
dat1[, 1]   
dat1[1:2, ]

dat2 <- data.frame(date = c("11/29", "11/30", "12/01", "12/02", "12/03", "12/04", "12/05"),
                   temp = c(17, 18, 24, 20, 21, 22, 24))
dat2 # print R object

dat2[, 2]
dat2[, 2] * 2   
dat2[, 2] + c(1, 0, -0.5, 2, 3, -2, 0.5) 

dat2[dat2$temp < 20, ]

dat2[grepl("11", dat2$date), ]

cbind(dat1, temp = dat2$temp)[dat2$temp < 20, ]

1;2

# ��¦�B��
1 + 2 + 3

x <- 10
y <- 4
(x + y) / 2 # ²�檺�����B��

# basic expression of integer vector
c(1, 2, 3, 4)

# simple expression
1:4
4:1

?seq
seq(1, 4)
seq(1, 9, by = 2) # ���j��2
seq(2, 5, by = 2)
seq(1, 9, length.out = 5) # ���Ϊ��׬�5
seq(1, 4, length.out = 5)

seq(1, 10)
1:10
seq(2, 10, by = 2)
seq(1, 10, length.out = 5)

c(1, 2, 3) * c(2, 2, 2)
c(1, 2, 3) * c(2)
c(1, 2, 3) * c(1, 2)

# shorter arguments are recycled
1:3 * 2

height <- c(174, 158, 160, 168, 173)
weight <- c(52, 39, 42, 46, 48)

BMI <- weight/(height/100)^2
BMI

x <- c(174, 158, 160, 168, 173)
x[1]           # �����1�Ӧ�m������
x[c(1, 3)]     # �����1, 3�Ӧ�m������
x[c(2, 3, 1)]  # �̧Ǩ���
x[c(2:5)] ; x[-1]

# �b[ ]���ϥέt�� (-) ���ϦV���
x[-1]
x[-c(1, 3, 4)]
x[-c(1:3)] ; x[c(4:5)]

x > 160

# �ϥΤ���B��l �[�W `which` ��ƶi�����
index <- which(x > 160) 
index 

x[index]

# ���O���Y�A�N���O�g�b [ ] ���A�H�F���Y�u�{���X���\��
x[which(x > 160)] ; x[x > 160]

# �t�X�޿��l�i��h���󪺨���
x[which(x > 160 & x < 175)]

# �i�H�ٲ� which
x[x > 160 & x < 175]
x[x > 160 | x < 175]

x <- c(174, 158, 160, 168, 173)
x

# ���N�S�w��m������
x[2] <- 158.5 # ���Nx���󪺲ĤG�Ӥ���
x

x[c(1, 5)] <- 175 
x

# �]�i�H�α���z�ﰵ���N
x[x > 160] <- 170 # ���N�j��160���Ȭ�170
x

x <- c(174, 158, 160, 168, 173)
x

# �b [ ] ���s�W����
x[6] <- 168
x

x[8] <- 147
x # �����w�������ȹw�]��NA

length(x) # �d�ݦV�q���󪺪���

x[length(x) + 1] <- 166 # ����W�[�s����
x

help.start()
ab # ��J`ab`�� ���Utab
?abs   # ���P�� help(abs)
??abs 
vignette()
vignette("Introduction", "Matrix")

X <- 1
X < 2
X <= 1

x <- "bubble"
y <- "bobble"

paste(x, y, sep = ",") # �r�ꪺ�ű��Gpaste
paste(x, y, sep = ":")
paste(x, y, sep = "")

strsplit(x, "u") # �r�ꪺ���ΡGstrsplit

name1 <- "������"
?substring
substring(name1, 1, 1) # �I���l�r��Gsubstring
substring(name1, 1, 2)
substring(name1, 3, 4)

nchar(name1) # �p��r����סGnchar # �յۻP length ��Ƥ��

name2 <- "�����Z"
substring(name2, 1, 1)
substring(name2, 1, 2)

a <- "2015-12-14"
substring(a, 6, 7) # ���X�r�� a <- "2015-12-14" �����

tmp <- strsplit(a, "-")
tmp[[1]]
tmp[[1]][2]

x <- c("F","M","F","F")
x

x <- factor(c("F", "M", "F", "F"))
x <- factor(c("F", "M", "F", "F"), levels = c("F", "M"))
x

x <- factor(c("F", "M", "F", "F"), levels = c("F"))
levels(x)

as.integer(x)

#�A�~���| �k�L�k��
Argri <- factor(c("F", "M", "F", "F"), order = TRUE, levels = c("F", "M"))
Argri

#������ �k�L�k��
Amis <- factor(c("F", "M", "F", "F"), order = FALSE, levels = c("F", "M"))
Amis

#���ӭn��
Amis <- factor(c("F", "M", "F", "F"), order = TRUE, levels = c("M", "F"))
Amis

#�|�@�ӻ{�u���Ҥl - �Z�W�@���줻�����O����A, B, C���ŧO
rank = factor(c("C", "A", "B", "B", "C", "C"), order = TRUE, level = c("C", "B", "A"))
rank

rank[1] < rank[2]

x <- c(1, 2.0, "3") # Character > Numeric > Integer > Logical
x

as.numeric("2") # �ഫ�V�q���A�G as.character, as.numeric, as.logical

x <- c(1, 2.0, "3")
x <- c(1, 2.0, 3)
as.numeric(x)
hist(as.numeric(x))

x <- "23"
x <- as.numeric("23")
x <- as.numeric(y <- "23")
x

y <- c("1", "2", "3", "2", "a")
as.numeric(y)

# �r����Ʀr
a1 <- c("89", "91", "102")
as.numeric(a1)

# ���L��Ʀr
a2 <- c(TRUE, TRUE, FALSE)
as.numeric(a2)

# �Ʀr�६�L
a3 <- c(-2, -1, 0, 1, 2) # �u��0�|�Q�নFALSE
as.logical(a3)

# �Ʀr��r��
as.character(a3)

z <- c(1, 2, 3, 2, 3, 2, 1)
as.character(z) # �r��
factor(z) # �����O

x1 <- c("�L�Ӭ�", 174, 52, TRUE)   # �Ҧ��������Q�ഫ���r��
x1
  
x2 <- list("�L�Ӭ�", 174, 52, TRUE) # �O�d��ƫ��A
str(x2)

x3 <- list(name = c("�L�Ӭ�", "����", "���̪L", "�L�W��"), height = c(174, 173, 158), weight = c(52, 48, 39), model = c(TRUE, TRUE, FALSE))
x3

x3[[1]]
x3$name
x3[["name"]]

x3[[3]][1]

names(x3)

names(x3) <- c("Name", "Height", "Weight", "Model")
names(x3) <- c("�m�W", "����", "�魫", "�үS��")
names(x3)[4] <- "models"

data("iris")
head(iris) # �C�X�e�X�����, �w�]6��
head(iris, 10)
tail(iris)
View(iris)
str(iris)

dim(iris)  # �C�X��ƪ��� rows and columns

iris[2, 3] # ��2�C�A��3��
iris[1:6, 1:3]
iris[1:3, 3:5]

iris[2, ] # ��2�C

iris$Petal.Length
iris[, 3] # ��3��
sum(iris[, 3]) # ��3��[�`
hist(iris[, 3]) # ��3�������

iris[c(1, 51, 101), ]

iris[, 1] # ���W�٥���
iris$Sepal.Length # �w�����W��
iris[["Sepal.Length"]] # �w�����W�� 

iris[iris$Sepal.Length > 5.5 & iris$Species == "setosa", ]
A1 <- iris[iris$Sepal.Length > 5.5 & iris$Species == "setosa", ]
A1

iris$A2 <- NA
iris$A2[iris$Sepal.Length > 5.5 & iris$Species == "setosa"] <- 1
iris$A2[iris$Sepal.Length <= 5.5 & iris$Species == "setosa"] <- 2
summary(iris$A2)

colnames(iris)[1] <- c("abc")

iris$Sepal.Length > 5
iris[iris$Sepal.Length > 5, ]

# ����r�����N�P�d�� - gsub
# gsub(pattern, replacement, x)

year <- c("����99", "����100", "����101")
gsub("����", "", year)

as.numeric(gsub("����", "", year)) + 1911

# ����r�����N�P�d�� - grep
# grep(pattern, x, value=FALSE)
# grepl(pattern, x)
# grep(pattern, x, value=TRUE)

title <- c("���߷|�e��A�����n��", "���������߷|�G�����v�r�Z���i��ĳ���z��", "��22K�F�����߭ۡG�����Q���~�ݥ�")
grep("���߷|", title)
grep("��", title)

grepl("���߷|", title)

grep("���߷|", title, value = TRUE)

# ����r�����N�P�d�� - gregexpr
txt <- c("�W�ҪL�Ӭ¨�����174�����A�魫52����", "�k�����̪L����158�����A�魫�u��39����")
gregexpr("[0-9]+", txt) # ��9��}�l
matches <- gregexpr("[0-9]+", txt)
regmatches(txt, matches)

# ���N�Ggsub
# �d���m�Ggrep(value = FALSE), grep(value = TRUE), grepl
# �d�䵲�G�Ggrepexpr