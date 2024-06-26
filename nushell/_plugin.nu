register C:\Users\sergi\.cargo\bin\nu_plugin_custom_values.exe  {
  "sig": {
    "name": "custom-value generate",
    "usage": "PluginSignature for a plugin that generates a custom value",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_custom_values.exe  {
  "sig": {
    "name": "custom-value generate2",
    "usage": "PluginSignature for a plugin that generates a different custom value",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_custom_values.exe  {
  "sig": {
    "name": "custom-value update",
    "usage": "PluginSignature for a plugin that updates a custom value",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_formats.exe  {
  "sig": {
    "name": "from eml",
    "usage": "Parse text as .eml and create record.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "preview-body",
        "short": "b",
        "arg": "Int",
        "required": false,
        "desc": "How many bytes of the body to preview",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [
      [
        "String",
        {
          "Record": []
        }
      ]
    ],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Formats"
  },
  "examples": [
    {
      "example": "'From: test@email.com\nSubject: Welcome\nTo: someone@somewhere.com\nTest' | from eml",
      "description": "Convert eml structured data into record",
      "result": {
        "Record": {
          "val": {
            "cols": [
              "Subject",
              "From",
              "To",
              "Body"
            ],
            "vals": [
              {
                "String": {
                  "val": "Welcome",
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              },
              {
                "Record": {
                  "val": {
                    "cols": [
                      "Name",
                      "Address"
                    ],
                    "vals": [
                      {
                        "Nothing": {
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      },
                      {
                        "String": {
                          "val": "test@email.com",
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      }
                    ]
                  },
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              },
              {
                "Record": {
                  "val": {
                    "cols": [
                      "Name",
                      "Address"
                    ],
                    "vals": [
                      {
                        "Nothing": {
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      },
                      {
                        "String": {
                          "val": "someone@somewhere.com",
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      }
                    ]
                  },
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              },
              {
                "String": {
                  "val": "Test",
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              }
            ]
          },
          "internal_span": {
            "start": 0,
            "end": 0
          }
        }
      }
    },
    {
      "example": "'From: test@email.com\nSubject: Welcome\nTo: someone@somewhere.com\nTest' | from eml -b 1",
      "description": "Convert eml structured data into record",
      "result": {
        "Record": {
          "val": {
            "cols": [
              "Subject",
              "From",
              "To",
              "Body"
            ],
            "vals": [
              {
                "String": {
                  "val": "Welcome",
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              },
              {
                "Record": {
                  "val": {
                    "cols": [
                      "Name",
                      "Address"
                    ],
                    "vals": [
                      {
                        "Nothing": {
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      },
                      {
                        "String": {
                          "val": "test@email.com",
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      }
                    ]
                  },
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              },
              {
                "Record": {
                  "val": {
                    "cols": [
                      "Name",
                      "Address"
                    ],
                    "vals": [
                      {
                        "Nothing": {
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      },
                      {
                        "String": {
                          "val": "someone@somewhere.com",
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      }
                    ]
                  },
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              },
              {
                "String": {
                  "val": "T",
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              }
            ]
          },
          "internal_span": {
            "start": 0,
            "end": 0
          }
        }
      }
    }
  ]
}

register C:\Users\sergi\.cargo\bin\nu_plugin_formats.exe  {
  "sig": {
    "name": "from ics",
    "usage": "Parse text as .ics and create table.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [
      [
        "String",
        {
          "Table": []
        }
      ]
    ],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Formats"
  },
  "examples": [
    {
      "example": "'BEGIN:VCALENDAR\n            END:VCALENDAR' | from ics",
      "description": "Converts ics formatted string to table",
      "result": {
        "List": {
          "vals": [
            {
              "Record": {
                "val": {
                  "cols": [
                    "properties",
                    "events",
                    "alarms",
                    "to-Dos",
                    "journals",
                    "free-busys",
                    "timezones"
                  ],
                  "vals": [
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    },
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    },
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    },
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    },
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    },
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    },
                    {
                      "List": {
                        "vals": [],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    }
                  ]
                },
                "internal_span": {
                  "start": 0,
                  "end": 0
                }
              }
            }
          ],
          "internal_span": {
            "start": 0,
            "end": 0
          }
        }
      }
    }
  ]
}

register C:\Users\sergi\.cargo\bin\nu_plugin_formats.exe  {
  "sig": {
    "name": "from ini",
    "usage": "Parse text as .ini and create table.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [
      [
        "String",
        {
          "Record": []
        }
      ]
    ],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Formats"
  },
  "examples": [
    {
      "example": "'[foo]\na=1\nb=2' | from ini",
      "description": "Converts ini formatted string to record",
      "result": {
        "Record": {
          "val": {
            "cols": [
              "foo"
            ],
            "vals": [
              {
                "Record": {
                  "val": {
                    "cols": [
                      "a",
                      "b"
                    ],
                    "vals": [
                      {
                        "String": {
                          "val": "1",
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      },
                      {
                        "String": {
                          "val": "2",
                          "internal_span": {
                            "start": 0,
                            "end": 0
                          }
                        }
                      }
                    ]
                  },
                  "internal_span": {
                    "start": 0,
                    "end": 0
                  }
                }
              }
            ]
          },
          "internal_span": {
            "start": 0,
            "end": 0
          }
        }
      }
    }
  ]
}

register C:\Users\sergi\.cargo\bin\nu_plugin_formats.exe  {
  "sig": {
    "name": "from vcf",
    "usage": "Parse text as .vcf and create table.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [
      [
        "String",
        {
          "Table": []
        }
      ]
    ],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Formats"
  },
  "examples": [
    {
      "example": "'BEGIN:VCARD\nN:Foo\nFN:Bar\nEMAIL:foo@bar.com\nEND:VCARD' | from vcf",
      "description": "Converts ics formatted string to table",
      "result": {
        "List": {
          "vals": [
            {
              "Record": {
                "val": {
                  "cols": [
                    "properties"
                  ],
                  "vals": [
                    {
                      "List": {
                        "vals": [
                          {
                            "Record": {
                              "val": {
                                "cols": [
                                  "name",
                                  "value",
                                  "params"
                                ],
                                "vals": [
                                  {
                                    "String": {
                                      "val": "N",
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  },
                                  {
                                    "String": {
                                      "val": "Foo",
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  },
                                  {
                                    "Nothing": {
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  }
                                ]
                              },
                              "internal_span": {
                                "start": 0,
                                "end": 0
                              }
                            }
                          },
                          {
                            "Record": {
                              "val": {
                                "cols": [
                                  "name",
                                  "value",
                                  "params"
                                ],
                                "vals": [
                                  {
                                    "String": {
                                      "val": "FN",
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  },
                                  {
                                    "String": {
                                      "val": "Bar",
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  },
                                  {
                                    "Nothing": {
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  }
                                ]
                              },
                              "internal_span": {
                                "start": 0,
                                "end": 0
                              }
                            }
                          },
                          {
                            "Record": {
                              "val": {
                                "cols": [
                                  "name",
                                  "value",
                                  "params"
                                ],
                                "vals": [
                                  {
                                    "String": {
                                      "val": "EMAIL",
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  },
                                  {
                                    "String": {
                                      "val": "foo@bar.com",
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  },
                                  {
                                    "Nothing": {
                                      "internal_span": {
                                        "start": 0,
                                        "end": 0
                                      }
                                    }
                                  }
                                ]
                              },
                              "internal_span": {
                                "start": 0,
                                "end": 0
                              }
                            }
                          }
                        ],
                        "internal_span": {
                          "start": 0,
                          "end": 0
                        }
                      }
                    }
                  ]
                },
                "internal_span": {
                  "start": 0,
                  "end": 0
                }
              }
            }
          ],
          "internal_span": {
            "start": 0,
            "end": 0
          }
        }
      }
    }
  ]
}

register C:\Users\sergi\.cargo\bin\nu_plugin_gstat.exe  {
  "sig": {
    "name": "gstat",
    "usage": "Get the git status of a repo",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [
      {
        "name": "path",
        "desc": "path to repo",
        "shape": "Filepath",
        "var_id": null,
        "default_value": null
      }
    ],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": {
      "Custom": "prompt"
    }
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_inc.exe  {
  "sig": {
    "name": "inc",
    "usage": "Increment a value or version. Optionally use the column of a table.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [
      {
        "name": "cell_path",
        "desc": "cell path to update",
        "shape": "CellPath",
        "var_id": null,
        "default_value": null
      }
    ],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "major",
        "short": "M",
        "arg": null,
        "required": false,
        "desc": "increment the major version (eg 1.2.1 -> 2.0.0)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "minor",
        "short": "m",
        "arg": null,
        "required": false,
        "desc": "increment the minor version (eg 1.2.1 -> 1.3.0)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "patch",
        "short": "p",
        "arg": null,
        "required": false,
        "desc": "increment the patch version (eg 1.2.1 -> 1.2.2)",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Default"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_example.exe  {
  "sig": {
    "name": "nu-example-1",
    "usage": "PluginSignature test 1 for plugin. Returns Value::Nothing",
    "extra_usage": "Extra usage for nu-example-1",
    "search_terms": [
      "example"
    ],
    "required_positional": [
      {
        "name": "a",
        "desc": "required integer value",
        "shape": "Int",
        "var_id": null,
        "default_value": null
      },
      {
        "name": "b",
        "desc": "required string value",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [
      {
        "name": "opt",
        "desc": "Optional number",
        "shape": "Int",
        "var_id": null,
        "default_value": null
      }
    ],
    "rest_positional": {
      "name": "rest",
      "desc": "rest value string",
      "shape": "String",
      "var_id": null,
      "default_value": null
    },
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "flag",
        "short": "f",
        "arg": null,
        "required": false,
        "desc": "a flag for the signature",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "named",
        "short": "n",
        "arg": "String",
        "required": false,
        "desc": "named string",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": [
    {
      "example": "nu-example-1 3 bb",
      "description": "running example with an int value and string value",
      "result": null
    }
  ]
}

register C:\Users\sergi\.cargo\bin\nu_plugin_example.exe  {
  "sig": {
    "name": "nu-example-2",
    "usage": "PluginSignature test 2 for plugin. Returns list of records",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "a",
        "desc": "required integer value",
        "shape": "Int",
        "var_id": null,
        "default_value": null
      },
      {
        "name": "b",
        "desc": "required string value",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [
      {
        "name": "opt",
        "desc": "Optional number",
        "shape": "Int",
        "var_id": null,
        "default_value": null
      }
    ],
    "rest_positional": {
      "name": "rest",
      "desc": "rest value string",
      "shape": "String",
      "var_id": null,
      "default_value": null
    },
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "flag",
        "short": "f",
        "arg": null,
        "required": false,
        "desc": "a flag for the signature",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "named",
        "short": "n",
        "arg": "String",
        "required": false,
        "desc": "named string",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_example.exe  {
  "sig": {
    "name": "nu-example-3",
    "usage": "PluginSignature test 3 for plugin. Returns labeled error",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "a",
        "desc": "required integer value",
        "shape": "Int",
        "var_id": null,
        "default_value": null
      },
      {
        "name": "b",
        "desc": "required string value",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [
      {
        "name": "opt",
        "desc": "Optional number",
        "shape": "Int",
        "var_id": null,
        "default_value": null
      }
    ],
    "rest_positional": {
      "name": "rest",
      "desc": "rest value string",
      "shape": "String",
      "var_id": null,
      "default_value": null
    },
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "flag",
        "short": "f",
        "arg": null,
        "required": false,
        "desc": "a flag for the signature",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "named",
        "short": "n",
        "arg": "String",
        "required": false,
        "desc": "named string",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_port_list.exe  {
  "sig": {
    "name": "port list",
    "usage": "list all active connections (TCP+UDP)",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "disable-ipv4",
        "short": "6",
        "arg": null,
        "required": false,
        "desc": "do not fetch ipv6 connections (ipv6 only)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "disable-ipv6",
        "short": "4",
        "arg": null,
        "required": false,
        "desc": "do not fetch ipv4 connections (ipv4 only)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "disable-udp",
        "short": "t",
        "arg": null,
        "required": false,
        "desc": "do not fetch UDP connections (TCP only)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "disable-tcp",
        "short": "u",
        "arg": null,
        "required": false,
        "desc": "do not fetch TCP connections (UDP only)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "process-info",
        "short": "p",
        "arg": null,
        "required": false,
        "desc": "loads process info (name, cmd, binary path)",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Network"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_query.exe  {
  "sig": {
    "name": "query",
    "usage": "Show all the query commands",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Filters"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_query.exe  {
  "sig": {
    "name": "query json",
    "usage": "execute json query on json file (open --raw <file> | query json 'query string')",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "query",
        "desc": "json query",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Filters"
  },
  "examples": []
}

register C:\Users\sergi\.cargo\bin\nu_plugin_query.exe  {
  "sig": {
    "name": "query web",
    "usage": "execute selector query on html/web",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "query",
        "short": "q",
        "arg": "String",
        "required": false,
        "desc": "selector query",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "as-html",
        "short": "m",
        "arg": null,
        "required": false,
        "desc": "return the query output as html",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "attribute",
        "short": "a",
        "arg": "String",
        "required": false,
        "desc": "downselect based on the given attribute",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "as-table",
        "short": "t",
        "arg": {
          "Table": []
        },
        "required": false,
        "desc": "find table based on column header list",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "inspect",
        "short": "i",
        "arg": null,
        "required": false,
        "desc": "run in inspect mode to provide more information for determining column headers",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Network"
  },
  "examples": [
    {
      "example": "http get https://phoronix.com | query web --query 'header'",
      "description": "Retrieve all `<header>` elements from phoronix.com website",
      "result": null
    },
    {
      "example": "http get https://en.wikipedia.org/wiki/List_of_cities_in_India_by_population\n    | query web --as-table [Rank City 'Population(2011)[3]' 'Population(2001)[3][a]' 'State or union territory']",
      "description": "Retrieve a html table from Wikipedia and parse it into a nushell table using table headers as guides",
      "result": null
    },
    {
      "example": "http get https://www.nushell.sh | query web --query 'h2, h2 + p' | group 2 | each {rotate --ccw tagline description} | flatten",
      "description": "Pass multiple css selectors to extract several elements within single query, group the query results together and rotate them to create a table",
      "result": null
    },
    {
      "example": "http get https://example.org | query web --query a --attribute href",
      "description": "Retrieve a specific html attribute instead of the default text",
      "result": null
    }
  ]
}

register C:\Users\sergi\.cargo\bin\nu_plugin_query.exe  {
  "sig": {
    "name": "query xml",
    "usage": "execute xpath query on xml",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "query",
        "desc": "xpath query",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Filters"
  },
  "examples": []
}

