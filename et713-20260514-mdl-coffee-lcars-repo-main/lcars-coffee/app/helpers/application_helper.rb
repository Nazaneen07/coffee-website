module ApplicationHelper
  # TNG-style stardate: 41000 + (year-2364)*1000 + day_of_year*2.74
  def stardate
    now = Time.current
    day_of_year = now.yday
    stardate = 41000 + (now.year - 2364) * 1000 + day_of_year * 2.74
    sprintf("%.1f", stardate)
  end

  # Map bean type to CSS class fragment (arabica/robusta/liberica/excelsa)
  def type_class(type)
    (type || "").downcase
  end

  # Padded bean designation: BN-0007
  def bean_designation(bean)
    "BN-#{bean.id.to_s.rjust(4, '0')}"
  end

  def supplier_designation(supplier)
    "SUP-#{supplier.id.to_s.rjust(2, '0')}"
  end

  # Stock-bar color tier based on percent of max
  def qty_class(pct)
    return "low" if pct < 30
    return "mid" if pct < 60
    ""
  end
end