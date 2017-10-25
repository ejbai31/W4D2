class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: {in: ['PENDING', 'APPROVED', 'DENIED']}
  validate :does_not_overlap_approved_request

  belongs_to :cat


  private

  def overlapping_requests
    CatRentalRequest.where(cat_id: cat_id)
    .where(
      'start_date BETWEEN ? AND ? OR end_date BETWEEN ? AND ?',
      start_date, end_date, start_date, end_date
    )
  end

  def overlapping_approved_requests
    overlapping_requests.where(status: 'APPROVED')
  end

  def does_not_overlap_approved_request
    if overlapping_approved_requests.exists?
      errors.add(:cat_id, "is not available during that time.")
    end
  end

end

# r2 = CatRentalRequest.new
# r2.cat_id = 1
# r2.start_date = Date.new(2017, 10, 26)
# r2.end_date = Date.new(2017, 10, 28)
# r2.overlapping_requests
