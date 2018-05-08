# Wczytaj do pamieci funkcje pakietu ggvis
library(ggvis)

# Rozklad dwumianowy:
gen.binom.pp<-function(N,p){
  # Sprawdzenie, czy p jest prawdopodobienstwem
  if (p>=0 & p<=1 & N>0){
    # Wartosci zmiennej losowej:
    x<-0:N
    # Rozklad prawdopodobienstwa:
    pp<-dbinom(x, N, p)
    df <-data.frame(x, pp)
    df %>% ggvis(~x, ~pp) %>%
      layer_bars(width=0.001) %>%
      add_axis("x", title = "x") %>%
      add_axis("y", title = "P(x)")
  } 
  else{warning("Nieprawidlowa wartosc p lub N!")}
  }


## rozklad Poissona
gen.poiss.pp<-function(N,lambda){
  if (N>0 & lambda>=0){
    # Wartosci zmiennej losowej:
    x<-0:N
    
    # Rozklad prawdopodobienstwa:
    pp<-dpois(x, lambda)
    df <-data.frame(x, pp)
    df %>% ggvis(~x, ~pp) %>%
      layer_bars(width=0.001) %>%
      add_axis("x", title = "x") %>%
      add_axis("y", title = "P(x)")
    }
  else{warning("Nieprawidlowa wartosc N lub lambda!")}
}

gen.binom.pp(100, 0.3)
gen.binom.pp(100, 0.5)
gen.binom.pp(100, 0.8)

gen.poiss.pp(100, 30)
gen.poiss.pp(100, 50)
gen.poiss.pp(100, 80)
