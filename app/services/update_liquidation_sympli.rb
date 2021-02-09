class UpdateLiquidationSympli
  def process
    count = 0
    TableSympli.where(is_arus: false ).each do |liquidation|
      rows = get_row_remote(nde: liquidation.dna, dsnd: liquidation.dne, fenr: liquidation.nde)
      liquidation.update(is_arus: true) if rows.any?
      rows.update_all(is_process: true)
      count = rows.count > 1 ? count + 1 : count
    end
    p "Tiene mas de una liquidación #{count}"
  end

  def get_row_remote(nde: nil, dsnd: nil, fenr: nil)
    TableRemote.where(nde: nde, dsnd: dsnd, novedad_retiro: 'SI')
  end

end