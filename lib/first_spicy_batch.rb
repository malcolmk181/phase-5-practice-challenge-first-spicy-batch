# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

# given an integer n
# find the first number 0..n that is spicy
# by calling is_spicy_batch(number)

# my idea
# start in the middle and check if spicy
  # if it is spicy, go further left (halfway between original spot and last spot)
  # if it is not spicy, go further right (halfway between original spot and last spot)
# keep checking middles until I get to point where boundaries are equal

def first_spicy_batch(n)
  # your code here
  l_bound = 1
  r_bound = n

  while l_bound < r_bound
    target = (r_bound + l_bound) / 2
    is_spicy_batch(target) ? r_bound = target : l_bound = target + 1
  end

  return l_bound
end