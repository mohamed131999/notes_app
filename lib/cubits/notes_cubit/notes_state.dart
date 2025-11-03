part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

// final class NotesLoading extends NotesState {}

final class NoteSuccess extends NotesState {
  final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}

final class NotesFailed extends NotesState {
  final String errmessage;

  NotesFailed({required this.errmessage});
}
