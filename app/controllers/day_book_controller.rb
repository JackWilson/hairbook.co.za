class DayBookController < ApplicationController
  def Index
    shop_id = Shop.find_by(name: "Head Boys - Brooklyn").id
#    start_date = DateTime.parse("2016/11/02 0:0:0")
    start_date = "'2016-11-02 00:00:00'"
#    end_date = DateTime.parse("2016/11/02 23:59:00")
    end_date = "'2016-11-02 23:59:00'"
    search_str = "shop_id = "
    search_str += shop_id.to_s
    search_str += " AND slot_start >= "
    search_str += start_date
    search_str += " AND slot_end <= "
    search_str += end_date
    puts search_str

    @dayentries = ShopCalendar.where(search_str).order(:stylist_id, :slot_start)

  end
end
