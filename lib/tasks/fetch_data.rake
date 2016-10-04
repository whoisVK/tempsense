namespace :tempsense do
  task fetch_history: :environment do
  	pubnub = Pubnub.new(
	    subscribe_key: 'sub-c-6dd7c098-7e9b-11e6-9717-0619f8945a4f',
	    publish_key: 'pub-c-becfbd32-c45e-4805-8bd3-cad1bb48de33',
	    auth_key: "Inlosol",
	    uuid: "ruby"
	)
	pubnub.history(
	    channel: 'backfront',
	    count: 5,
	    start: 14748049813239517,
	    reverse: true
	) do |envelope|
    	puts envelope.result[:data][:messages]
	  end   
   end
   puts "tasks are running"
end