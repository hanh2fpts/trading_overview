import 'package:trading_overview/model/menu_item_model.dart';

mixin ImageConstant {
  //Asset icons
  static const String iconTest = 'assets/menu_profile.png';
}

class Menu {
  static List<MenuItemModel> listMenuItem = <MenuItemModel>[
    MenuItemModel(id: 0, title: 'Thị trường'),
    MenuItemModel(id: 1, title: 'Tổng quan', icons: ImageConstant.iconTest),
    MenuItemModel(id: 2, title: 'Bảng giá', icons: ImageConstant.iconTest),
    MenuItemModel(id: 3, title: 'Tin tức', icons: ImageConstant.iconTest),
    MenuItemModel(id: 4, title: 'Chỉ số thế giới', icons: ImageConstant.iconTest),
    MenuItemModel(id: 5, title: 'FPTS nhận định', icons: ImageConstant.iconTest),
    MenuItemModel(id: 6, title: 'Lịch sự kiện', icons: ImageConstant.iconTest),
    MenuItemModel(id: 7, title: 'Biểu đồ', icons: ImageConstant.iconTest),
    MenuItemModel(id: 8, title: 'Giao dịch phái sinh', icons: ImageConstant.iconTest),
    MenuItemModel(id: 9, title: 'Giao dịch'),
    MenuItemModel(id: 10, title: 'Đặt lệnh', icons: ImageConstant.iconTest),
    MenuItemModel(id: 11, title: 'Lệnh điều kiện', icons: ImageConstant.iconTest),
    MenuItemModel(id: 12, title: 'Báo cáo giao dịch', icons: ImageConstant.iconTest),
    MenuItemModel(id: 13, title: 'Quản lý tài khoản', icons: ImageConstant.iconTest),
    MenuItemModel(id: 14, title: 'Báo cáo tài sản', icons: ImageConstant.iconTest),
    MenuItemModel(id: 15, title: 'Chuyển tiền', icons: ImageConstant.iconTest),
    MenuItemModel(id: 16, title: 'Ký quỹ', icons: ImageConstant.iconTest),
    MenuItemModel(id: 17, title: 'Thực hiện quyền', icons: ImageConstant.iconTest),
    MenuItemModel(id: 18, title: 'Tư vấn đầu tư'),
    MenuItemModel(id: 19, title: 'Giới thiệu dịch vụ', icons: ImageConstant.iconTest),
    MenuItemModel(id: 20, title: 'Tìm kiếm chuyên viên', icons: ImageConstant.iconTest),
    MenuItemModel(id: 21, title: 'Báo cáo tư vấn', icons: ImageConstant.iconTest),
    MenuItemModel(id: 22, title: 'Đánh giá chuyên viên', icons: ImageConstant.iconTest),

    MenuItemModel(id: 23, title: 'Tài liệu', icons: ImageConstant.iconTest),
    MenuItemModel(id: 24, title: 'Trợ giúp'),
    MenuItemModel(id: 25, title: 'Thông báo', icons: ImageConstant.iconTest),
    MenuItemModel(id: 26, title: 'Chuyên viên quản lý tài khoản', icons: ImageConstant.iconTest),
    MenuItemModel(id: 27, title: 'Cài đặt mật khẩu', icons: ImageConstant.iconTest),
    MenuItemModel(id: 28, title: 'Liên hệ', icons: ImageConstant.iconTest),

    MenuItemModel(id: 29, title: 'Góp ý', icons: ImageConstant.iconTest),
    MenuItemModel(id: 30, title: 'Hướng dẫn sử dụng', icons: ImageConstant.iconTest),
    MenuItemModel(id: 31, title: 'Cài đặt', icons: ImageConstant.iconTest),
  ];
}
