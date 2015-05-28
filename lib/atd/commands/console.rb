require 'rubygems'
module ATD
	module Commands
		class Console

			def initialize(environment)
				@environment = environment
			end
			def start
				puts @environment.config
			end
			def self.run_system(cmd,showlog=false)
				log = system "bash", "-c", cmd
				# puts log if showlog
      end
      def self.execute(host,port,username, password,file,database)
        puts host
        puts port
        file = "/home/pc270/Dropbox/projects/research/ruby/atd/config/script/2_load_vendors.sql"
        system("psql","-h",host,"-U","postgres","-d",database,"-a","-w","-f",file)

      end

		end
	end
end
