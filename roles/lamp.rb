name "lamp"
description "lamp"
run_list(
  #"recipe[apache2]", #and Lock file to  http://www.google.co.jp/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CCcQFjAA&url=http%3A%2F%2Fhttpd.apache.org%2Fdocs%2F2.4%2Fupgrading.html&ei=LVaRU9uOFoOm8AX4w4H4Dg&usg=AFQjCNHXe4S2NX3pEPyqeqXG6Pt1ryVVzw&sig2=KUm__SlrfeBb1mN3VNfAUg&bvm=bv.68445247,d.dGc
  #"recipe[apache2::mod_php5]", in ubuntu servers are apache server have already installed apach2.4
  "recipe[mysql::client]",
  "recipe[mysql::server]",
  "recipe[php]",
)
default_attributes(
                   #"apache" => {
                   #"version" => "apache2.2", #In ubutu 13.10, downloading apache2.4, but this chef dont't support aoache2.4
                   #"default_site_enabled" => true,
                   #}
)
