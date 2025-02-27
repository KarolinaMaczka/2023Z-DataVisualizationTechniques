###########################################
###    TECHNIKI WIZUALIZACJI DANYCH     ###
###           LABORATORIUM 1            ###
###########################################

## 0) Prowadz�cy
# Anna Kozak/Mateusz Krzyzi�ski/Hubert Ruczy�ski/Miko�aj Spytek 
# Kontakt: MS Teams lub mail
# anna.kozak@pw.edu.pl/mateusz.krzyzinski.stud@pw.edu.pl/hruczynski21@interia.pl/mikolaj.spytek.stud@pw.edu.pl

## 1) Spos�b pracy na zaj�ciach laboratoryjnych
# a) pracujemy w R (wi�kszo�� semestru) i Python
# b) pracujemy na przygotowanych plikach, kt�re b�d� na repozytorium przedmiotu
# c) podczas zaj�� prowadz�cy b�dzie wprowadza� zagdanienia, a nast�pnie b�dzie rozwi�zywanie zada� w celu utrwalenia wiadomo�ci
# d) kolejna porcja materia�u b�dzie omawiana je�eli wi�kszo�� grupy wykona zadane zadanie 
# e) wszelkie pytania czy to zwi�zane z kodem, prac� domow� czy kwestie teoretyczne prosz� �mia�o zg�asza� prowadz�cemu 

## 2) Materia�y
# Repozytorium na GitHub
# https://github.com/mini-pw/2023Z-DataVisualizationTechniques 

## 3) Jak dzia�a GitHub?
# Jak zg�osi� prac� domow�/projekt? (fork, commit, pull request)
# https://rogerdudler.github.io/git-guide/

## 4) Podstawy R - rozgrzewka 

data(mtcars)
head(mtcars)

?mtcars


# Jak wybieramy wiersze (obserwacje) oraz kolumny (zmienne)?
mtcars[c(2,3),c(4,5)]
mtcars[2:3,4:5]
# Pierwszy wiersz, pierwsza kolumna?
mtcars[1,1]
# 10 pierszych wierszy, 2 i 3 kolumna?
mtcars[1:10,2:3]
# Jak wybieramy kolumny po nazwach? 
mtcars['mpg'] #ramka danych
mtcars[,'mpg'] #wektor
mtcars[,c('mpg','cyl')]
mtcars[c('mpg','cyl')]
mtcars[,c('cyl','mpg')]
# Wszystkie wiersze i kolumny w kolejno�ci "am", "wt", "mpg"?
mtcars[,c('am','wt','mpg')]
# Jak wybiera� jedn� kolumn�?
mtcars$mpg #wektor
# Uwaga na przecinek i wyb�r kolumn poprzez indeksy

# Pytania

# 1. Wymiar ramki danych
dim(mtcars)
# 2. Jakie s� typy zmiennych?
typeof(mtcars)
# 3. Ile jest unikalnych warto�ci zmiennej "cyl" i jakie to s� warto�ci?
unique(mtcars$cyl)
length(unique(mtcars$cyl))
# 4. Jaka jest �rednia warto�� zmiennej "drat" dla samochod�w o warto�ci zmiennej "cyl" r�wnej 4?
mean(mtcars[mtcars$cyl==4, c("drat")])
median(mtcars[mtcars$cyl==4, c("drat")])
# 5. Jakie s� unikalne warto�ci zmiennej "am" i jaki jest ich rozk�ad (liczba wyst�pie�)? 
unique(mtcars$am)
# Prosty wykres

# Zale�no�� "mpg" i "hp" - scatter plot



# Zmienna "cyl" - barplot


## 4) Gra proton, nale�y stworzy� plik R z kodami do rozwi�zania gry (do 20 minut).

install.packages("proton")
library(proton)
proton()
data.frame(employees)
employees[employees$surname =='Insecure',c('login')]
proton()
proton(action="login", login='johnins')
top1000passwords
for(i in 1:1000){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
logs
logs[logs$login=='s.pietraszko', c('host')]
unique(logs[logs$login=='s.pietraszko', c('host')])
x<-table(unique(logs[logs$login=='s.pietraszko', c('host')]))
for(i in 1:312){
  proton(action = "server", host=x[i])
}
## 5) Umieszczamy rozwi�zanie na repozytorium.
