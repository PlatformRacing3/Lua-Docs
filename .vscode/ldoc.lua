--- LDoc configuration and runtime API.
--- This table is available in config.ld files and provides functions for
--- customizing documentation generation.
--- @class ldoc
ldoc = {}

--- The character set used for output (default: 'UTF-8')
--- @type string
ldoc.charset = 'UTF-8'

--- LDoc version string
--- @type string
ldoc.version = '1.5.0'

--- Output directory for generated documentation
--- @type string
ldoc.dir = nil

--- Output file name (default: 'index')
--- @type string
ldoc.output = nil

--- Project name
--- @type string
ldoc.project = nil

--- Page title
--- @type string
ldoc.title = nil

--- Full project description
--- @type string
ldoc.description = nil

--- Format for processing documentation (e.g., 'markdown', 'plain')
--- @type string
ldoc.format = nil

--- File extension for output files (default: 'html')
--- @type string
ldoc.ext = nil

--- Template directory path
--- @type string
ldoc.template = nil

--- Style sheet directory path
--- @type string
ldoc.style = nil

--- Custom CSS file path
--- @type string
ldoc.custom_css = nil

--- Whether to show all items including local functions
--- @type boolean
ldoc.all = nil

--- Ignore the first comment block in source files (useful for license headers)
--- @type boolean
ldoc.boilerplate = nil

--- Whether to merge module documentation from different files without explicit @submodule tag
--- @type boolean
ldoc.merge = nil

--- Whether to use colon-style tags instead of @ tags
--- @type boolean
ldoc.colon = nil

--- Whether to ignore warnings
--- @type boolean
ldoc.ignore = nil

--- Suppress output messages during generation
--- Corresponds to -q/--quiet command-line flag
--- @type boolean
ldoc.quiet = nil

--- Enable verbose output with detailed processing information
--- Corresponds to -v/--verbose command-line flag
--- @type boolean
ldoc.verbose = nil

--- Set if you want all items in alphabetical order
--- @type boolean
ldoc.sort = nil

--- Sort modules alphabetically in navigation
--- @type boolean
ldoc.sort_modules = nil

--- Don't show parameters or return values in output
--- @type boolean
ldoc.no_return_or_parms = nil

--- Suppress the Contents summary section
--- @type boolean
ldoc.no_summary = nil

--- Allow long names to wrap in the summaries
--- @type boolean
ldoc.wrap = nil

--- Set to true if format is set but you don't want code comments processed
--- @type boolean
ldoc.plain = nil

--- Stop trying to create references to standard Lua libraries
--- @type boolean
ldoc.no_lua_ref = nil

--- Whether references in backticks will be resolved (default true with Markdown)
--- @type boolean|nil
ldoc.backtick_references = nil

--- Set to true if you do not want a space between function name and arguments
--- @type boolean
ldoc.no_space_before_args = nil

--- Set to true if the docs break LuaDoc compatibility
--- @type boolean
ldoc.not_luadoc = nil

--- Convert 'opt' modifier series to 'opt', 'optchain', etc.
--- @type boolean
ldoc.convert_opt = nil

--- Don't infer function arguments from source code
--- @type boolean
ldoc.no_args_infer = nil

--- Code prettifier: 'lua' (default) or 'lxsh'
--- @type string
ldoc.pretty = nil

--- Prettify source files and make links; if "show" also index source files
--- Controls syntax highlighting and source file display in documentation.
---   - false or nil: Don't prettify source files
---   - true: Prettify all source files found (from modules)
---   - 'show': Prettify and include source files in navigation index
---   - string path: Prettify files in specified directory
---   - table: List of file paths or table with exclude field
--- Source files are accessible via the 'file' kind in navigation.
--- @type boolean|string|string[]|{[integer]: string, exclude: string[]}
ldoc.prettify_files = nil

--- Examples directory or file (can be a table with exclude field)
--- Can be a string path, list of paths, or table with 'exclude' field for filtering.
--- Examples: 'examples', {'examples'}, {exclude = {'examples/skip.lua'}}
--- @type string|string[]|{[integer]: string, exclude: string[]}
ldoc.examples = nil

--- Readme files or topics to be processed with Markdown (can be a list)
--- @type string|string[]
ldoc.readme = nil

--- Alias for readme - topic documents (can be a list)
--- @type string|string[]
ldoc.topics = nil

--- Short project description used under the project title
--- @type string
ldoc.description = nil

--- Longer project description when needed
--- @type string
ldoc.full_description = nil

--- An image displayed under the project name on all pages
--- @type string
ldoc.icon = nil

--- A link to an image that browsers will display as each page's icon
--- @type string
ldoc.favicon = nil

--- Overrides the usual '#' used for Lua code in templates
--- @type string
ldoc.template_escape = nil

--- Allow using @module, @script, @file, etc. multiple times in a file
--- @type boolean
ldoc.multimodule = nil

--- Define new tags with custom sections.
--- Each custom tag can be a string (tag name) or table with options.
--- Table format: {tag_name, title=display_title, hidden=false, format=nil}
---   - tag_name: The tag identifier (e.g., 'note', 'warning', 'tip')
---   - title: Display title for the section (defaults to tag_name)
---   - hidden: Whether to hide the section from navigation (default: false)
---   - format: Optional format string for rendering the tag content
--- Example: {{'note', title='Notes'}, {'warning', title='Warnings', hidden=false}}
--- @type table<integer, string|{[1]: string, title: string?, hidden: boolean?, format: string?}>
ldoc.custom_tags = nil

--- List of keywords to mark in prettified code
--- @type string[]
ldoc.user_keywords = nil

--- Function that allows last-minute modification to produced HTML
--- Called after template rendering but before writing output files.
--- Receives the generated HTML and the module object.
--- Should return the modified HTML string.
--- @type fun(html: string, module: LDocModule): string
ldoc.postprocess_html = nil

--- Base package name for module inference (e.g., '.', '..', or explicit package name)
--- @type string
ldoc.package = nil

--- Whether to use one-column layout
--- @type boolean
ldoc.one = nil

--- Conditional compilation flag
--- Set via -D/--define command-line flag
--- Can be tested in config.ld: if ldoc.my_flag then ... end
--- Example: ldoc -Dproduction config.ld sets ldoc.production = true
--- @type table<string, boolean>
ldoc.define = nil

--- Whether to show unqualified names in sidebar links
--- @type boolean
ldoc.unqualified = nil

--- Map of module names to their source files for processing order
--- Establishes a partial ordering where master module files are processed first.
--- Useful when using @submodule tags or module merging.
--- Key is the module name, value is the file path.
--- Example: ldoc.module_file = {['mylib.core'] = 'src/core.lua'}
--- @type table<string, string>
ldoc.module_file = nil

--- Variables to be made available during processing
--- These variables become available in the template environment.
--- Can be accessed in custom templates via ${ldoc.vars.name}
--- Useful for custom template data, build information, or configuration.
--- Example: ldoc.vars = {version='1.0', build_date=os.date()}
--- @type table<string, any>
ldoc.vars = nil

--- Merge error groups under this title
--- When using @error tags, multiple errors can be grouped together.
---   - false or nil: Each @error creates a separate return entry
---   - string: Group all errors under this section title (default: 'Error Message')
---   - true: Use default grouping title
--- Grouped errors appear as fields of a single return value.
--- @type string|boolean
ldoc.merge_error_groups = nil

--- Extra parsing options for language processors
--- Provides additional configuration to language-specific parsers.
--- Common options:
---   - C = true: Enable C/C++ parsing mode (sets no_lua_ref automatically)
---   - show_return_types = true: Infer and show return types in C code
--- Language processors use this to customize parsing behavior.
--- @type table<string, any>
ldoc.parse_extra = nil

--- Use Markdown titles for topics (use first # heading as name)
--- @type boolean
ldoc.use_markdown_titles = nil

--- Don't escape underscores in output
--- @type boolean
ldoc.dont_escape_underscore = nil

--- Allow global function lookups
--- @type boolean
ldoc.global_lookup = nil

--- Custom references handler function for resolving references
--- This function is called during reference resolution to handle custom linking patterns
--- @type fun(reference: string): string|nil
ldoc.custom_references = nil

--- Import a module into the configuration environment.
--- Only available if --unsafe_no_sandbox is used.
--- @param t string The module name to import
--- @param env table? Optional environment table to import into
--- @return any The imported module
function ldoc.import(t, env) end

--- Source file or directory (can be a table with exclude field)
--- Specifies which files to process for documentation.
--- Can be a string path, list of paths, or table with 'exclude' field for filtering.
--- Examples: '.', 'src', {'src', 'lib'}, {exclude = {'src/internal/*.lua'}}
--- When set in config.ld, overrides the command-line file argument.
--- @type string|string[]|{[integer]: string, exclude: string[]}
ldoc.file = nil

--- Custom display name handler function
--- Allows customizing how item names are displayed in the generated documentation.
--- The handler receives an item and the default display name function,
--- and should return the custom display name string.
--- @type fun(item: LDocItem, default_display_name: function): string
ldoc.custom_display_name_handler = nil

--- CSS filename (set by LDoc, default 'ldoc.css')
--- @type string
ldoc.css = nil

--- Template filename (set by LDoc, default 'ldoc.ltp')
--- @type string
ldoc.templ = nil

---
--- Runtime fields (set by LDoc during execution, read-only)
---

--- Logging function (set to print by default)
--- @type function
ldoc.log = nil

--- Project map containing all documentation kinds
--- @type LDocProjectMap
ldoc.kinds = nil

--- List of all modules found during processing
--- @type LDocModuleList
ldoc.modules = nil

--- If only one module exists, this is set to that module; otherwise nil
--- @type LDocModule|nil
ldoc.single = nil

--- Markup processing function created from format and pretty settings
--- @type table|fun(text: string, item: LDocItem?): string
ldoc.markup = nil

--- Timestamp for documentation generation
--- @type string
ldoc.updatetime = nil

--- Custom date string for reproducible builds
--- Set to empty string to skip timestamp entirely
--- Set to 'system' (default) to use current system time
--- Corresponds to --date command-line flag
--- @type string
ldoc.date = nil

--- Enable reproducible build mode (no date/version in output)
--- Corresponds to --testing command-line flag  
--- @type boolean
ldoc.testing = nil

--- Debug output mode - dump documentation object graph instead of generating HTML
--- Corresponds to --dump command-line flag
--- @type boolean
ldoc.dump = nil

--- Filter output through a Lua function instead of generating HTML
--- Value should be 'module.function' (e.g., 'pl.pretty.dump')
--- Corresponds to --filter command-line flag
--- @type string
ldoc.filter = nil

--- Show all references to specific tags (comma-separated)
--- Used for debugging tag usage across documentation
--- Corresponds to --tags command-line flag
--- @type string
ldoc.tags = nil

--- Exit with non-zero status on any warning
--- Useful for CI/CD pipelines to enforce clean documentation
--- Corresponds to --fatalwarnings command-line flag
--- @type boolean
ldoc.fatalwarnings = nil

--- Custom date string for reproducible builds
--- Set to empty string to skip timestamp entirely
--- Set to 'system' (default) to use current system time
--- Corresponds to --date command-line flag
--- @type string
ldoc.date = nil

--- Enable reproducible build mode (no date/version in output)
--- Corresponds to --testing command-line flag
--- @type boolean
ldoc.testing = nil

--- Base filename of the icon (derived from icon path)
--- @type string|nil
ldoc.icon_basename = nil

--- Map of file paths that have been prettified
--- Internal field tracking which source files have syntax highlighting applied.
--- Keys are file paths, values are true for prettified files.
--- @type table<string, boolean>
ldoc.is_file_prettified = nil

--- Custom see reference handler
--- Internal runtime field set by custom_see_handler() calls.
--- @type function
ldoc.custom_see_handler = nil

--- Kind names mapping
--- Maps item type names to their display names or presentation configuration.
--- Can customize how types appear in documentation (e.g., 'lfunction' -> 'Local Functions').
--- Value can be string (display name) or {group_name, subgroup_name}.
--- @type table<string, string|{[1]: string, [2]: string}>
ldoc.kind_names = nil

---
--- Template Helper Functions (available during HTML generation)
--- These fields are set internally and available in ldoc.ltp templates
---

--- Standard library functions available in templates
--- @type fun(...): any
ldoc.ipairs = nil

--- @type fun(...): any
ldoc.pairs = nil

--- @type fun(...): any
ldoc.print = nil

--- Escape HTML special characters
--- @type fun(str: string): string
ldoc.escape = nil

--- Apply syntax highlighting to Lua code
--- @type fun(code: string): string
ldoc.prettify = nil

--- Get combined description (summary + description)
--- @type fun(item: LDocItem): string
ldoc.descript = nil

--- Get module display name
--- @type fun(mod: LDocModule): string
ldoc.module_name = nil

--- Generate href for cross-references
--- @type fun(see: table): string
ldoc.href = nil

--- Generate reference to module
--- @type fun(mod: LDocModule): string
ldoc.ref_to_module = nil

--- Generate source file reference
--- @type fun(item: LDocItem): string
ldoc.source_ref = nil

--- Include file content in output
--- @type fun(filepath: string): string
ldoc.include_file = nil

--- Get list item tags based on list length
--- Returns '<li>','</li>' for multi-item lists, '','', for single items
--- @type fun(list: table): string, string
ldoc.use_li = nil

--- Get default display name for item
--- @type fun(item: LDocItem): string
ldoc.default_display_name = nil

--- Get display name for item (respects custom_display_name_handler)
--- @type fun(item: LDocItem): string
ldoc.display_name = nil

--- Convert string to identifier (replace non-word chars with underscores)
--- @type fun(str: string): string
ldoc.no_spaces = nil

--- Get presentation name for module type
--- @type fun(mod: LDocModule): string
ldoc.module_typename = nil

--- Check if value is a List
--- @type fun(value: any): boolean
ldoc.is_list = nil

--- Strip markdown header prefix
--- @type fun(str: string): string
ldoc.strip_header = nil

--- Format type name with links
--- @type fun(type_str: string): string
ldoc.typename = nil

--- Check if type should appear in navigation
--- @type fun(type: string, module: LDocModule?): boolean
ldoc.allowed_in_contents = nil

--- Document character set for current module
--- @type string
ldoc.doc_charset = nil

--- Whether in root context (index page)
--- @type boolean
ldoc.root = nil

--- Current module being rendered
--- @type LDocModule
ldoc.module = nil

--- Body content for special entities (topics, examples)
--- @type string
ldoc.body = nil

--- Allowed kinds in current context
--- @type table<string, boolean>?
ldoc.kinds_allowed = nil

---
--- LDoc Module Object
--- Represents a documented module with items and sections
---
--- @class LDocModule
--- @field name string The full module name
--- @field mod_name string The short module name (without package)
--- @field package string The package name
--- @field type string The module type ('module', 'classmod', 'script', 'example', 'topic', 'file')
--- @field summary string Brief description of the module
--- @field description string Full module description
--- @field items LDocItemList List of documented items (functions, tables, etc.)
--- @field sections LDocSectionList List of sections in the module
--- @field kinds LDocModuleMap Map of module items organized by kind
--- @field file LDocFile|string The source file (File object or filename string)
--- @field tags table<string, any> Module-level tags
--- @field see string[]? Cross-references to other modules/items
--- @field usage string[]? Usage examples
--- @field author string[]? Module authors
--- @field copyright string? Copyright information
--- @field license string? License information
--- @field release string? Release version
--- @field body string? Raw text content (for topics, examples, and prettified files)
--- @field postprocess function? Function to process body content before rendering
--- @field info table? OrderedMap of module metadata (author, copyright, license, release)
--- @field ldoc ldoc? Reference to the ldoc configuration table
--- @field section LDocSection? Current section context during parsing
--- @field enclosing_section LDocSection? Saved section when using 'within' tag
--- @field old_style boolean? Whether module uses old-style module(...) declaration
--- @field display_name string? Custom display name (for topics with markdown titles)
local LDocModule = {}

--- @class LDocModuleList : { [integer]: LDocModule }
--- @field by_name table<string, LDocModule> Modules indexed by name for quick lookup

--- @class LDocItemList : { [integer]: LDocItem }
--- @field by_name table<string, LDocItem> Items indexed by name for quick lookup

--- @class LDocModuleMap
--- Container for organizing items by their kind/section.
--- Items are grouped into categories like Functions, Tables, Methods, etc.
--- Supports iteration over kinds and their items.
--- @field Functions LDocItemList? List of functions
--- @field Tables LDocItemList? List of tables  
--- @field Fields LDocItemList? List of fields
--- @field Methods LDocItemList? List of methods
--- @field Metamethods LDocItemList? List of metamethods
--- @field [string] LDocItemList? Custom sections defined by user via add_section()
--- @overload fun(): fun(): (string, LDocItemList, string) Iterator returning (kind, items, type)
local LDocModuleMap = {}

--- @class LDocItem
--- @field name string Item name (may be qualified like 'Class:method')
--- @field type string Item type ('function', 'lfunction', 'table', 'field', 'annotation', etc.)
--- @field summary string Brief description
--- @field description string? Full description
--- @field section string? Section this item belongs to
--- @field display_name string? Custom display name (overrides name)
--- @field module LDocModule? Parent module
--- @field file LDocFile? Source file
--- @field lineno number? Line number in source
--- @field tags table<string, any> Item tags (param, return, see, usage, etc.)
--- @field params LDocParamList? Function parameters
--- @field args string? Formatted argument list e.g. "(a, b)" or "(a [, b])"
--- @field ret string[]? Return value descriptions
--- @field retgroups LDocReturnGroup[]? Grouped return values
--- @field raise string[]? Errors that may be raised
--- @field see string[]? Cross-references (List of hrefs)
--- @field usage string[]? Usage examples (List of strings)
--- @field modifiers table<string, table> Parameter/return type modifiers (map of tag -> modifiers)
--- @field formal_args LDocFormalArgs? Formal argument information
--- @field subparams table<string, LDocParamList> Subparameters for table fields
--- @field parameter string The parameter type ('param' for functions, 'field' for tables)
--- @field inferred boolean? Whether item was inferred from code rather than explicit tags
--- @field names_hierarchy string[] Hierarchical name parts split by '.', ':', or '\\'

--- @class LDocFormalArgs : string[]
--- @field comments table<string, string> Comments associated with arguments
--- @field types string[]? Inferred types for arguments

--- @class LDocParamList : { [integer]: string }
--- @field map table<string, string> Parameter names to descriptions

--- @class LDocReturnGroup : { [integer]: LDocReturn }
--- @field g number Group number

--- @class LDocReturn
--- @field text string Return description
--- @field type string? Return type
--- @field ctypes LDocTypeField[]? Complex type fields
--- @field mods table? Return modifiers

--- @class LDocTypeField
--- @field name string Field name
--- @field type string Field type
--- @field comment string Field description

--- @class LDocSection
--- @field name string Section name/identifier (may contain underscores for lookups)
--- @field display_name string Display title for section
--- @field summary string Section description
--- @field description string? Full section description
--- @field items LDocItemList List of items in this section
--- @field type string Section type ('section', 'type', 'factory')
--- @field lineno number? Line number where section is defined
--- @field module LDocModule? Parent module containing this section
--- @field tags table? Section tags

--- @class LDocSectionList : { [integer]: LDocSection }
--- @field by_name table<string, LDocSection> Sections indexed by name

--- @class LDocFile
--- @field filename string Path to the source file
--- @field modules LDocModuleList Modules defined in this file
--- @field items LDocItemList All items in this file
--- @field sections LDocSectionList Sections in this file
--- @field args table Arguments/options passed to file processor
--- @field lang table Language processor used for this file (lua, cc, moon, etc.)
--- @field base string Base directory for module name inference

--- @class LDocProjectMap
--- Top-level container mapping project kinds to their modules.
--- Kinds include 'Modules', 'Scripts', 'Classes', 'Topics', 'Examples', 'Source'.
--- Supports iteration: for kind, modules in project() do ... end
--- where kind is the kind name and modules is a list of LDocModule objects.
--- @field Modules LDocModuleList?
--- @field Scripts LDocModuleList?
--- @field Classes LDocModuleList?
--- @field Topics LDocModuleList?
--- @field Examples LDocModuleList?
--- @field Source LDocModuleList?
--- @field [string] LDocModuleList? Custom kinds
--- @overload fun(): fun(): (string, LDocModuleList) Iterator returning (kind, modules)
local LDocProjectMap = {}

--- Define an alias for a tag.
--- Allows creating shortcuts for commonly used tags.
--- Examples: ldoc.alias('p', 'param') or ldoc.alias('string', {'param', modifiers={type='string'}})
--- @param alias string The alias name (e.g., 'p' for 'param', 'string' for typed param)
--- @param tag string|table The tag to alias (string for simple alias, table for alias with modifiers)
---   - If string: simple tag name to alias
---   - If table: {tag_name, value='prefix', modifiers={key='value'}}
---   - Modifiers can use $1, $2 placeholders to capture parts of the value
function ldoc.alias(alias, tag) end

--- Add a new language extension.
--- Registers a file extension to be processed as a specific language.
--- Extensions must start with a dot (e.g., '.lua'). If omitted, it will be added.
--- @param ext string The file extension (e.g., '.lua', '.c', 'moon')
--- @param lang string The language type ('lua' or 'c')
function ldoc.add_language_extension(ext, lang) end

--- Add a new documentation section.
--- Creates a custom section for organizing documentation items within a module.
--- Use @section name to start the section, @section end to close it.
--- @param name string The section identifier (used with @section tag)
--- @param title string The section display title shown in documentation
--- @param subname string|nil Optional subsection name for nested organization
function ldoc.add_section(name, title, subname) end

--- Define a new documentation type.
--- Creates a custom item type (tag) for documentation.
--- Project-level types (like @module) create separate documentation pages.
--- Module-level types (like @function) are items within a module.
--- @param tag string The tag name (e.g., 'widget', 'component')
--- @param header string The display header shown in the documentation
--- @param project_level boolean Whether this is a project-level type (true) or module-level (false)
--- @param subfield string|nil Optional subfield name for organizing items
function ldoc.new_type(tag, header, project_level, subfield) end

--- Create a typed parameter alias.
--- Defines a shorthand macro for @param with a specific type annotation.
--- Example: ldoc.tparam_alias('string') allows using @string instead of @tparam string
--- @param name string The alias name (becomes a tag like @string, @number, etc.)
--- @param type string|nil The type annotation (defaults to name if not provided)
function ldoc.tparam_alias(name, type) end

--- Set the URL for Lua manual references.
--- Configures the base URL where standard Lua function references should link.
--- Used for automatically linking built-in Lua functions to their documentation.
--- @param url string The base URL for the Lua manual (e.g., 'https://www.lua.org/manual/5.4/')
function ldoc.manual_url(url) end

--- Register a custom see reference handler.
--- Allows custom processing of @see references that match a specific pattern.
--- The handler function receives captures from the pattern and should return
--- link text and link URL. Used for custom reference formats like man pages,
--- GitHub issues, etc.
--- @param pattern string Lua pattern to match (e.g., '^([%w_]+)%((%d)%)$' for man(3) format)
--- @param handler fun(...: string): string, string Handler function receiving pattern captures, returns (link_text, link_url)
function ldoc.custom_see_handler(pattern, handler) end