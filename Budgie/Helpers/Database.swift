//
//  Database.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-10.
//

import Foundation
import Supabase

let database = SupabaseClient(
    supabaseURL: URL(string: "https://jipwfudbanqpcdnktiyl.supabase.co")!,
    supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImppcHdmdWRiYW5xcGNkbmt0aXlsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgwNDU4NjUsImV4cCI6MjAzMzYyMTg2NX0.wIna6nCuY6IIIaHcCuITa3gkgTJqZrsSQBOv88vwESc"
)
