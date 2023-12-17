migration_generate name="migration":
    atlas migrate diff {{ name }} \
        --config file://atlas.hcl \
        --to file://schema.hcl \
        --env local

migration_apply:
    atlas migrate apply --env local