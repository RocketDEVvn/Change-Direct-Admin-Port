#!/bin/bash
function pause(){
   read -p "$*"
}
#
# 
echo "==============================================================================";
echo "                 Xin chào - Chúc một ngày tốt lành tới Bạn ^^ ";
echo "   Cảm ơn bạn đã sử dụng Scripts nhỏ này của tôi để thay đổi Port Direct Admin";
echo "";
echo "  Tại giao diện chỉnh sửa tệp cấu hình, các bạn hãy tìm dòng port= để chỉnh sửa";
echo "      -  Nếu không có dòng này hãy thêm ở dưới cùng theo ví dụ dưới đây  -";
echo "                                 port=6969";
echo "         Trong đó port= là khai báo Port còn 6969 là Port bạn muốn thay đổi.";
echo "";
echo "        Sau khi File mở ra bạn nhấn i để sửa đổi, bạn cũng có thể nhấn Insert";
echo "           Sau khi thêm, sửa xong. Bạn nhấn ESC, tiếp theo nhấn :wq để thoát";
echo "==============================================================================";
pause '                      Nhấn [Enter] để tiếp tục...';
echo "==============================================================================";
echo "";
# 
cd /usr/local/directadmin/conf/;
vi directadmin.conf;
killall -9 directadmin;
/etc/init.d/directadmin start;
echo "==============================================================================";
echo "              Chúc mừng bạn đã Khai báo / Mở Port thành công ^^ ";
echo "         Tuy nhiên bạn cần mở chặn trong Firewall để sử dụng port này";
echo "";
echo "           Trong file chuẩn bị được mở dưới đây bạn chú ý 3 mục sau:";
echo "   139	TCP_IN =   |    250	TCP6_IN =     |        2726	PORTS_directadmin =";
echo "";
echo "         Các số 139, 250, 2726 là tương ứng với các dòng mình chỉnh sửa";
echo "";
echo "        Vì port được sắp xếp từ Nhỏ đến lớn nên bạn cần thêm cho đúng vị trí";
echo "                             Ví dụ: 6379,6969,7080";
echo "Và một điều bàn cần lưu ý là xoá port 2222 khi không sử dụng cũng trong nơi đang sửa";
echo "";
echo "           Sau khi thêm, sửa xong. Bạn nhấn ESC, tiếp theo nhấn :wq để thoát";
echo "==============================================================================";
pause '                      Nhấn [Enter] để tiếp tục...';
echo "==============================================================================";
echo "";
vi /etc/csf/csf.conf;
csf -r;
csf -g 55555
echo "==============================================================================";
echo "            Chúc mừng bạn đã Khai báo / Mở Port Direct Admin thành công ^^ ";
echo "";
echo "         Ở list phía trên, nhìn về bên phải nếu xuất hiện Port bạn mới khai báo";
echo "";
echo "                          LÀ ĐÃ THÊM PORT THÀNH CÔNG";
echo "";
echo "                    Nếu chưa :(( Bạn có thể cần làm lại nhé";
echo "";
echo "                Cảm ơn bạn đã tin tưởng và sử dụng Script nhỏ này ^^";
echo "";
echo "             Để ĐỔI PORT SSH VPS nhấn ENTER, để thoát nhấn CTRL + C";
echo "==============================================================================";
pause '                      Nhấn [Enter] để ĐỔI PORT SSH VPS...';
echo "==============================================================================";
echo "";
printf \\a
sleep 1
printf \\a
sleep 1
printf \\a
echo "==============================================================================";
echo "           CHÀO MỪNG BẠN, CHÚNG TA BẮT ĐẦU THAY ĐỔI PORT SSH VPS ^^ ";
echo "";
echo "                 Để hoạt động tốt nhất, chúng ta cần tắt SElinux";
echo "";
echo " ";
echo "                        Ở TRONG FILE MỞ SAU KHI ENTER";
echo " Tìm đến dòng SELINUX=enforcing chọn phím i để vào trạng thái chỉnh sửa tệp tin";
echo "";
echo "                        Bạn chỉnh thành SELINUX=disabled";
echo "";
echo "           Sau khi thêm, sửa xong. Bạn nhấn ESC, tiếp theo nhấn :wq để thoát";
echo "==============================================================================";
pause '                      Nhấn [Enter] để KHỞI ĐỘNG LẠI...';
echo "==============================================================================";
echo "";
vi /etc/sysconfig/selinux;
sestatus;
echo "==============================================================================";
echo "                      CHÀO MỪNG BẠN MỌI THỨ ĐÃ XONG ^^ ";
echo "";
echo "                 Bạn vừa đổi Port Direct Admin và Port SSH VPS";
echo "";
echo " ";
echo "                    BẠN CẦN NHỚ PORT ĐÓ TRONG QUÁ TRÌNH SỬ DỤNG";
echo "                 Để hoạt động tốt nhất, bạn cần KHỞI ĐỘNG LẠI VPS";
echo "";
echo "                Bạn muốn khởi động lại sau, nhấn CTRL + C để thoát";
echo "==============================================================================";
pause '                      Nhấn [Enter] để KHỞI ĐỘNG LẠI...';
echo "==============================================================================";
echo "";
reboot
