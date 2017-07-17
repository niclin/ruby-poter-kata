require_relative './bookstore'

describe "Buy Harry poter book" do

  before(:each) do
    @cart = BookStore.new
  end

  it "第一集买了一本书" do
    @cart.add(:first, 1)

    expect(@cart.calculate).to eq(100)
  end

  it "第一集买了一本书, 第二集买一本书" do
    @cart.add(:first, 1)
    @cart.add(:second, 1)

    expect(@cart.calculate).to eq(190)
  end

  it "第一集买了一本书, 第二集买两本书" do
    @cart.add(:first, 1)
    @cart.add(:second, 2)

    expect(@cart.calculate).to eq(290)
  end

  it "第一集买了一本书, 第二集买一本书，第三集买了一本书" do
    @cart.add(:first, 1)
    @cart.add(:second, 1)
    @cart.add(:third, 1)

    expect(@cart.calculate).to eq(270)
  end

  it "第一集买了一本书, 第二集买一本书，第三集买了一本书，第四集买了一本书" do
    @cart.add(:first, 1)
    @cart.add(:second, 1)
    @cart.add(:third, 1)
    @cart.add(:fourth, 1)

    expect(@cart.calculate).to eq(320)
  end

  it "第一集买了一本书, 第二集买一本书，第三集买了一本书，第四集买了一本书，第五集买了一本书" do
    @cart.add(:first, 1)
    @cart.add(:second, 1)
    @cart.add(:third, 1)
    @cart.add(:fourth, 1)
    @cart.add(:fifth, 1)

    expect(@cart.calculate).to eq(375)
  end
end
