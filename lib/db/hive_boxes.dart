import 'package:hive/hive.dart';
import '../models/note_model.dart';

class Boxes { static Box<NoteModel> getNotes() => Hive.box<NoteModel>('notes'); }
