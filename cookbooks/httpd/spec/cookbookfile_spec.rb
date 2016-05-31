require 'chefspec'

describe 'httpd::default' do

let(:chef_run) {
  ChefSpec::SoloRunner.new.converge(described_recipe)
}

 it 'creates a cookbook_file file1' do
    expect(chef_run).to create_cookbook_file('/tmp/file1')
 end

  it 'creates a file testfile' do
    expect(chef_run).to create_file('/tmp/testfile')
  end

end

