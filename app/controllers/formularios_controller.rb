class FormulariosController < ApplicationController
   
  
 def por_get
  

   var1=[];
data = File.read("input.txt")



     
   
     var1.push(  data);
      @comentario =var1;
end



  def por_post

   @respuesta = true;
   cola=[]
  
   g=params[:nombre];
i=0;
time1 =Time.new


    File.open("input.txt", "a") do |f|
      f.puts(params[:nombre])

  
  
  
   
  f.puts("\n")
  #f.puts("______________________________________________________________________________________________________________")
  f.puts("\""+params[:comentario]+"\"")
  #f.puts("______________________________________________________________________________________________________________")
  f.puts("\n")
  
  f.puts("Autor: "+params[:autor]+"       "+"Fecha de publicación :"+time1.year.to_s+"/"+time1.month.to_s+"/"+time1.day.to_s+"  "+time1.hour.to_s+":"+time1.min.to_s+":"+time1.sec.to_s)
   f.puts("\n")
  # f.puts("_________________________________________________________________________________________________")
   f.puts("\n")
    f.puts("\n")
  nil
 
end 

     
   redirect_to :controller => "formularios", :action => "por_get";
   
    end 
end
