import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../db/hive_boxes.dart';

class AddNoteScreen extends StatefulWidget {
  final NoteModel? note;
  const AddNoteScreen({super.key, this.note});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }
  }

  void saveNote() {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();

    if (title.isEmpty || content.isEmpty) return;

    final box = Boxes.getNotes();

    if (widget.note == null) {
      box.add(NoteModel(title: title, content: content, createdAt: DateTime.now()));
    } else {
      widget.note!
        ..title = title
        ..content = content
        ..save();
    }

    Navigator.pop(context);
  }

  void deleteNote() {
    if (widget.note != null) {
      widget.note!.delete();
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.note != null;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(isEditing ? 'Edit Note' : 'Add Note'),
        actions: [
          IconButton(icon: const Icon(Icons.save), onPressed: saveNote),
          if (isEditing)
            IconButton(icon: const Icon(Icons.delete), onPressed: deleteNote),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TextField(
                controller: _contentController,
                decoration: const InputDecoration(labelText: 'Content'),
                maxLines: null,
                expands: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
