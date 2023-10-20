import 'package:reactive_forms/reactive_forms.dart';

class DateComparisonValidator extends Validator<dynamic> {
  final String controlName;
  final String mustBeforeControlName;
  final bool markAsDirty;

  const DateComparisonValidator({
    required this.controlName,
    required this.mustBeforeControlName,
    required this.markAsDirty,
  }) : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final error = {"Invalid date duration": true};

    if (control is! FormGroup) {
      return error;
    }

    final formControl = control.control(controlName);
    final mustBeforeFormControl = control.control(mustBeforeControlName);
    if (formControl.value != null && mustBeforeFormControl.value != null) {
      final fromVal = DateTime.parse(formControl.value as String);
      final toVal = DateTime.parse(mustBeforeFormControl.value as String);

      if (fromVal.isAfter(toVal)) {
        mustBeforeFormControl.setErrors(error, markAsDirty: markAsDirty);
        formControl.setErrors(error, markAsDirty: markAsDirty);
        mustBeforeFormControl.markAsTouched();
        return error;
      }
    }

    mustBeforeFormControl.removeError("Invalid date duration");

    return null;
  }
}
