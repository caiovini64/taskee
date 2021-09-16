import 'package:localstorage/localstorage.dart';
import 'package:new_taskee/infra/cache/local_storage_adapter.dart';

LocalStorageAdapter makeLocalStorageAdapter() =>
    LocalStorageAdapter(localStorage: LocalStorage('taskee'));
