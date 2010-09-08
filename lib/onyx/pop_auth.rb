require 'net/pop'

def is_valid_pop3_account(params)
  pop = nil
  if params[:port]
    pop = Net::POP3.new params[:host], params[:port]
  else
    pop = Net::POP3.new params[:host]
  end
  begin
    pop.auth_only params[:user], params[:password]
  rescue
    return false
  end
  return true
end
