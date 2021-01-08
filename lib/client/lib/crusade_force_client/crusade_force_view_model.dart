import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:client/crusade_force_client/crusade_force_screen.dart';

class CrusadeForceViewModelFactory extends VmFactory<AppState, CrusadeForceScreen> {
  CrusadeForceViewModelFactory(widget) : super(widget);

  @override
  CrusadeForceViewModel fromStore() => CrusadeForceViewModel(
        crusadeForces: state.crusadeForceState.crusadeForces ?? List<CrusadeForce>.empty(),
        currentCrusadeForce: state.crusadeForceState.currentCrusadeForce,
        onGetAllCrusadeForces: () => dispatch(GetAllCrusadeForcesAction()),
        onCreateNewCrusadeForce: (crusadeForce) => dispatch(CreateNewCrusadeForce(crusadeForce: crusadeForce)),
      );
}

class CrusadeForceViewModel extends Vm {
  final List<CrusadeForce> crusadeForces;
  final CrusadeForce currentCrusadeForce;
  final Function onGetAllCrusadeForces;
  final Function(CrusadeForce) onCreateNewCrusadeForce;

  CrusadeForceViewModel({
    this.crusadeForces,
    this.currentCrusadeForce,
    this.onGetAllCrusadeForces,
    this.onCreateNewCrusadeForce,
  }) : super(
          equals: [
            crusadeForces,
            currentCrusadeForce,
          ],
        );
}
