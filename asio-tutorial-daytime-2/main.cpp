#include <ctime>
#include <iostream>
#include <string>
#include <boost/asio.hpp>

using boost::asio::ip::tcp;
using namespace std;

string make_daytime_string() {
  time_t now = time(0);
  return ctime(&now);
}

int main() {
  try {
    boost::asio::io_service io_service;
    int port = 9100;
    cout << "Registering port: " << port << endl;
    tcp::acceptor acceptor(io_service, tcp::endpoint(tcp::v4(), port));

    for (;;) {
      tcp::socket socket(io_service);
      cout << "Waiting for connection..." << endl;

      acceptor.accept(socket);
      cout << "Received connection." << endl;

      string reply_message = make_daytime_string();
      boost::system::error_code ignored_error;
      cout << "Sending response message: " << reply_message << endl;
      boost::asio::write(socket, boost::asio::buffer(reply_message), ignored_error);

      cout << endl;
    }
  } catch (exception& e) {
    std::cerr << e.what() << std::endl;
    return 1;
  }

  return 0;
}
