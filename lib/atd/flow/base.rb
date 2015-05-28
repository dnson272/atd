require "atd/base/step"

module ATD
  module Flow
    class Base < ATD::Base::Step
      # requires all files recursively inside a directory from current dir
      #     # @param _dir can be relative path like '/lib' or "../lib"
      def require_all(_dir)
        Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/**/*.rb"].each do |file|
          require file
        end
      end
      def init
        @workflow = []
      end
   end
  end
end
