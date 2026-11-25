import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const String supabaseUrl = 'https://zvuzqlbykpzirifnfbhp.supabase.co';
  static const String supabaseAnonKey = 'sb_publishable_oymEyoeNvN9wr7oHPQXu9w_14YQp5Go';

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      publishableKey: supabaseAnonKey,
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}
