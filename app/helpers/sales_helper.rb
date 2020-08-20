module SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def active_sale
    Sale.active[0]
  end
  
end