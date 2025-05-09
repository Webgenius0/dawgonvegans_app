// ignore_for_file: constant_identifier_names

const String url = "https://makeasy.pt/iva";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

final class PaymentGateway {
  PaymentGateway._();
  static String gateway(String orderId) => "";
}

final class Endpoints {
  Endpoints._();
  //backend_url

  //Authentication Section
  static String logIn() => "/wp-json/rdo-jwt-auth/v1/token";




  //Socail Bottom Bar
  static String socailPost() => "/wp-json/rdo-task-points/v1/social-posts";


  static String taskPost() => "/wp-json/rdo-task-points/v1/submit-task";

  /* // static String pro({required int categoryId}) => "/api/providers?category_id=$categoryId";
  static String providers({
    int? categoryId,
    double? latitude,
    double? longitude,
    int? subcategoryId,
    double? avgRating,
    int? radius,
  }) {
    return "/api/providers?category_id=$categoryId"
        "${longitude == null ? '' : '&longitude=$longitude'}"
        "${latitude == null ? '' : '&latitude=$latitude'}"
        "${subcategoryId == null ? '' : '&sub_category_id=$subcategoryId'}"
        "${radius == null ? '' : '&radius=$radius'}"
        "${avgRating == null ? '' : '&avg_rating=$avgRating'}";
  } */

  
}
