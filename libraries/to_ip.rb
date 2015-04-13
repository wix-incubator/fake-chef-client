require 'resolv'
class String
  def to_ip
    begin
      Resolv.new.getaddress(self)
    end
  end
end
