import 'package:church_eden_mob/core/network/client.dart';

class MyHttpImpl extends MYHttpClient {
  MyHttpImpl({
    super.baseOptions,
    super.createHttpClient,
    super.interceptors,
    super.validateCertificate,
  });
}
