require_relative '../lib/inject'

describe Array do
	it 'should eq 0 if initial passed in arg is 0' do
		expect(([1,2].injectt(0) {|memo, value| memo * value})).to eq(0)
	end

	it 'uses first value in array as initial memo value if no arg' do
		expect(([1,2,3,4].injectt() {|memo, value| memo * value})).to eq(24)
	end

end