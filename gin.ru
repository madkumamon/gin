require 'json' 

map '/' do
 run proc {|env| 
  req = Rack::Request.new(env)
   answer=JSON.parse(req.params["payload"])
   #puts "+"+"-"*80+"+"	
   #puts "Received params: #{req.params["secret"]}"
   if (answer["ref_name"]=="master")
     $result=answer["repository"]["name"]
     system('./run.sh', $result)
     puts "DONE !"
   else 
     puts "     + commit was made to branch \"#{answer["ref_name"]}\""
   end	
}
end

#thin start -R gin.ru -p 4000
