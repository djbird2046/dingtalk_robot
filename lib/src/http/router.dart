import 'package:shelf_router/shelf_router.dart';
import 'controller.dart';

final Router apiRouter = Router();

void apiRoutes(Controller controller) {
  apiRouter.get('/version', controller.getVersion);
  apiRouter.post('/receive', controller.receive);
}
