import 'package:app_cache/cache.dart';
import 'package:business/crusade_force/models/crusade_force.dart';
import 'package:business/di/service_locator.dart';
import 'package:business/utils/data_state.dart';

class CrusadeForceDaoService {
  CrusadeForceDao _dao;

  CrusadeForceDaoService({CrusadeForceDao dao}) {
    _dao = dao ?? serviceLocator<AppDatabase>().crusadeForceDao;
  }

  /// Database GET all CrusadeForces Table
  Future<DataState<List<CrusadeForce>>> getAll() async {
    try {
      return await _dao.getAll().then((crusadeForces) => DataState<List<CrusadeForce>>(
            data: crusadeForces.map((e) => _fromEntity(e)).toList(),
          ));
    } catch (e) {
      print('Error CrusadeForceDaoService getAll -> $e');

      return DataState<List<CrusadeForce>>(error: e);
    }
  }

  Future<DataState<int>> insertCrusadeForce(CrusadeForce crusadeForce) async {
    try {
      return await _dao
          .insertItem(_dao.toCompanion(_toEntity(crusadeForce)))
          .then((value) => DataState<int>(data: value));
    } catch (e) {
      print('Error CrusadeForceDaoService insertCrusadeForce -> $e');

      return DataState<int>(error: e);
    }
  }

  CrusadeForce _fromEntity(CrusadeForceEntity entity) {
    return CrusadeForce(
      id: entity.id,
      crusadeFactionKeyword: entity.crusadeFactionKeyword,
      description: entity.description,
    );
  }

  CrusadeForceEntity _toEntity(CrusadeForce model) {
    return CrusadeForceEntity(
      crusadeFactionKeyword: model.crusadeFactionKeyword,
      description: model.description,
    );
  }
}
