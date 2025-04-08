# Notes:
#   * falsy values: false, nil (`be_falsy`)
#   * truthy values: everything else (`be_truthy`, `be`)

# Docs:
#   * https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/be/

describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to     be_truthy
    expect('Hello').to  be_truthy
    expect(5).to        be_truthy
    expect(0).to        be_truthy
    expect(-1).to       be_truthy
    expect(3.14).to     be_truthy
    expect([]).to       be_truthy
    expect([1, 2]).to   be_truthy
    expect({}).to       be_truthy
    expect(:symbol).to  be_truthy
  end

  it 'can test for falseness' do
    expect(false).to  be_falsy
    expect(nil).to    be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
# OUTPUT:
#
#   be matchers
#     can test for truthiness
#     can test for falseness
#     can test for nil
#
#   Finished in 0.00112 seconds (files took 0.04599 seconds to load)
#   3 examples, 0 failures
