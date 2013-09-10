
template "#{ENV['HOME']}/boost.txt" do
  source 'boost.txt.erb'
  mode '0664'
end

%w(build-essential libboost1.48-all-dev bjam boost-build).each do |pkg|
  package pkg do
    action :install
  end
end

