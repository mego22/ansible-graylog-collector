describe package('java-1.8.0-openjdk') do
    it { should be_installed }
end

describe package('graylog-collector') do
    it { should be_installed }
end
