import 'package:flutter_component_playground/core/domain/base/base_use_case.dart';
import 'package:flutter_component_playground/core/model/widgets_entity.dart';

final class FetchWidgetList implements RegularApiUseCase<List<WidgetsEntity>> {
  FetchWidgetList();

  @override
  List<WidgetsEntity> invoke() {
    return [
      WidgetsEntity(
        widgetId: 1,
        name: 'Text Field',
        description: 'A Text Field widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 2,
        name: 'Text',
        description: 'A text widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 3,
        name: 'Button',
        description: 'A button widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 4,
        name: 'FAB Button',
        description: 'A fab button widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 5,
        name: 'Radio Button',
        description: 'A radio button widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 6,
        name: 'Switch Button',
        description: 'A switch button widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 7,
        name: 'Checkbox',
        description: 'A checkbox widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 8,
        name: 'Dropdown',
        description: 'A dropdow widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 9,
        name: 'List view',
        description: 'A list view widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 10,
        name: 'Grid view',
        description: 'A gridview widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 11,
        name: 'Carosel slider',
        description: 'A carosel slider widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 12,
        name: 'Image view',
        description: 'A image widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 13,
        name: 'Bottom navigation',
        description: 'A bottom navigation widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 14,
        name: 'Bottom dialog',
        description: 'A bottom dialog widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 15,
        name: 'Dialog',
        description: 'A dialog widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 16,
        name: 'Drawer',
        description: 'A drawer widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 16,
        name: 'Column',
        description: 'A column widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 17,
        name: 'Row',
        description: 'A row widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 18,
        name: 'Stack',
        description: 'A stack widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 19,
        name: 'Progressbar',
        description: 'A progressbar widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 20,
        name: 'Google map',
        description: 'A google map widget',
        image: 'assets/icons/button.png',
      ),
      WidgetsEntity(
        widgetId: 21,
        name: 'Notification',
        description: 'A notification widget',
        image: 'assets/icons/button.png',
      ),
    ];
  }
}
